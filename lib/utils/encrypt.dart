import 'dart:convert';
import 'dart:typed_data';
import 'dart:math';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/export.dart' hide Algorithm;

const iv = '0102030405060708'; // AES IV
const presetKey = '0CoJUm6Qyw8W8jud'; // 预设的 AES 密钥
const linuxapiKey = 'rFgB&h#%2?^eDg:Q'; // Linux API 使用的 AES 密钥
const base62 = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'; // 用于生成随机密钥的字符集
const publicKeyPem =
  '-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDgtQn2JZ34ZC28NWYpAUd98iZ37BUrX/aKzmFbt7clFSs6sXqHauqKWqdtLkF2KexO40H1YTX8z2lSgBBOAxLsvaklV8k4cBFK9snQXE9/DDaFt6Rr7iVZMldczhC0JNgTz+SHXT6CBHuX3e9SdB1Ua44oncaTWz7OBGLbCiK45wIDAQAB\n-----END PUBLIC KEY-----';
const eapiKey = 'e82ckenh8dichen8'; // EAPI 使用的 AES 密钥

// RSA变种
class NoPaddingEncoding extends PKCS1Encoding {
  NoPaddingEncoding(this._engine): super(_engine);
  final AsymmetricBlockCipher _engine;
  late int _keyLength;
  late bool _forEncryption;
  @override
  void init(bool forEncryption, CipherParameters params) {
    super.init(forEncryption, params);
    _forEncryption = forEncryption;
    if (params is AsymmetricKeyParameter<RSAAsymmetricKey>) {
      _keyLength = (params.key.modulus?.bitLength ?? 0 + 7) ~/ 8;
    }
  }
  @override
  int get inputBlockSize {
    return _keyLength;
  }
  @override
  int get outputBlockSize {
    return _keyLength;
  }
  int _encodeBlock(Uint8List inp, int inpOff, int inpLen, Uint8List out, int outOff) {
    if (inpLen > inputBlockSize) {
      throw ArgumentError("[!] debug: rsa-exten: input too long");
    }
    var block = Uint8List(inputBlockSize);
    var padLength = (block.length - inpLen);
    block.fillRange(0, padLength, 0x00);
    block.setRange(padLength, block.length, inp.sublist(inpOff));
    return _engine.processBlock(block, 0, block.length, out, outOff);
  }
  int _decodeBlock(Uint8List inp, int inpOff, int inpLen, Uint8List out, int outOff) {
    var block = Uint8List(outputBlockSize);
    var len = _engine.processBlock(inp, inpOff, inpLen, block, 0);
    block = block.sublist(0, len);
    if (block.length < outputBlockSize) {
      throw ArgumentError("[!] debug: rsa-exten: block truncated");
    }
    return block.length;
  }
  @override
  int processBlock(Uint8List inp, int inpOff, int len, Uint8List out, int outOff) {
      if (_forEncryption) {
        return _encodeBlock(inp, inpOff, len, out, outOff);
      } else {
        return _decodeBlock(inp, inpOff, len, out, outOff);
      }
    }
}

abstract class AbstractRSAExt {
  final RSAPublicKey? publicKey;
  final RSAPrivateKey? privateKey;
  PublicKeyParameter<RSAPublicKey>? get _publicKeyParams =>
    publicKey != null ? PublicKeyParameter(publicKey!) :
    null;
  PrivateKeyParameter<RSAPrivateKey>? get _privateKeyParams =>
    privateKey != null ? PrivateKeyParameter(privateKey!) :
    null;
  final AsymmetricBlockCipher _cipher;
  AbstractRSAExt({
    required this.publicKey,
    required this.privateKey,
  }) : _cipher = NoPaddingEncoding(RSAEngine());
}

class RSAExt extends AbstractRSAExt implements Algorithm {
  RSAExt({super.publicKey, super.privateKey});
  @override
  Encrypted encrypt(Uint8List bytes, {IV? iv, Uint8List? associatedData}) {
    if (publicKey == null) {
      throw StateError('[!] debug: rsa-exten: missing public key');
    }
    _cipher
      ..reset()
      ..init(true, _publicKeyParams!);
    return Encrypted(_cipher.process(bytes));
  }
  @override
  Uint8List decrypt(Encrypted encrypted, {IV? iv, Uint8List? associatedData}) {
    if (privateKey == null) {
      throw StateError('[!] debug: rsa-extern: missing private key');
    }
    _cipher
      ..reset()
      ..init(false, _privateKeyParams!);
    return _cipher.process(encrypted.bytes);
  }
}


// AES 加密函数
String aesEncrypt(
  {
    required String text,
    required String mode,
    required String key,
    required String iv,
    Uint8List? random16Key
  }
) {
  String encryptData;
  if (mode == 'cbc' && random16Key != null) {
    final pKey = Key.fromUtf8(key);
    final pIv = IV.fromUtf8(iv);
    final encrypter = Encrypter(AES(pKey, mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(text, iv: pIv);
    final key16 = Key(random16Key);
    final encrypterBody = Encrypter(AES(key16, mode: AESMode.cbc));
    encryptData = Uri.encodeQueryComponent(encrypterBody.encrypt(encrypted.base64, iv: pIv).base64);
  } else {
    encryptData = Uri.encodeQueryComponent(
      Encrypter(AES(Key.fromUtf8(key), mode: AESMode.ecb))
        .encrypt(text, iv: IV.fromLength(0))
        .base16
        .toUpperCase()
    );
  }
  return encryptData;
}

// RSA 加密函数
String rsaEncrypt(String publicKeyPem, Uint8List random16Key) {
  final parser = RSAKeyParser();
  final encrypter = Encrypter(RSAExt(publicKey: parser.parse(publicKeyPem) as RSAPublicKey?));
  return Uri.encodeQueryComponent(encrypter.encryptBytes(List.from(random16Key.reversed)).base16);
}

// 生成随机密钥(16位)并使用AES&RSA加密
Map<String, String> weApi(String text) {
  Uint8List random16Key = Uint8List.fromList(List.generate(16, (int index) {
    return base62.codeUnitAt(Random().nextInt(62));
  }));
  final params = aesEncrypt(text: text, mode: 'cbc', key: presetKey, iv: iv, random16Key: random16Key);
  final encSecKey = rsaEncrypt(publicKeyPem, random16Key);
  return {'params': params, 'encSecKey': encSecKey};
}

// Linux API 加密函数
Map<String, String> linuxapi(Map<String, dynamic> object) {
  final text = jsonEncode(object);
  final params = aesEncrypt(text: text, mode: 'ecb', key: linuxapiKey, iv: '');
  return {'eparams': params};
}

// EAPI 加密函数
Map<String, String> eApi(String url, String body) {
  var message = 'nobody${url}use${body}md5forencrypt';
  var digest = Encrypted(MD5Digest().process(Uint8List.fromList(utf8.encode(message)))).base16;
  var data = '$url-36cd479b6b5-$body-36cd479b6b5-$digest';
  final params = aesEncrypt(text: data, mode: 'ecb', key: eapiKey, iv: '');
  return {'params': params};
}
