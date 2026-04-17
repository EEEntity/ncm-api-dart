import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:cookie_jar/cookie_jar.dart';

const String defaultReferer = 'https://music.163.com';
// 本地存cookie，用于非web环境
class MusicFileCookieJar extends PersistCookieJar {
  MusicFileCookieJar._(String storagePath) : super(storage: FileStorage(storagePath));
  static Future<MusicFileCookieJar> create({required String cookiePath}) async {
    return MusicFileCookieJar._(cookiePath);
  }
  // 删除全部cookie
  @override
  Future<void> deleteAll() async {
    await super.deleteAll();
  }
  /// 读取文件导入cookie
  /// [filePath] 在Linux下有效，Android下会弹出文件选择器
  Future<void> importFromFile({String? filePath, Uri? uri}) async {
    String content = '';
    final targetUri = uri ?? Uri.parse("https://music.163.com");
    if (Platform.isAndroid) { // Android下使用文件选择器
      FilePickerResult? result = await FilePicker.pickFiles();
      if (result != null && result.files.single.path != null) {
        content = await File(result.files.single.path!).readAsString();
      } else {
        return; // 用户取消选择
      }
    } else if (Platform.isLinux) {
      if (filePath == null) throw ArgumentError("filePath is required on Linux");
      final file = File(filePath);
      if (await file.exists()) {
        content = await file.readAsString();
      } else {
        throw ArgumentError("File not found: $filePath");
      }
    }
    if (content.isEmpty) return;
    String firstLine = content.split('\n').first.trim();
    List<Cookie> cookies = _parseCookieString(firstLine);
    await saveFromResponse(targetUri, cookies);
  }
  /// 解析key1=value1; key2=value2; ...格式的cookie字符串
  List<Cookie> _parseCookieString(String cookieString) {
    List<Cookie> cookies = [];
    final pairs = cookieString.split(';');
    for (var pair in pairs) {
      final index = pair.indexOf('=');
      if (index != -1) {
        final key = pair.substring(0, index).trim();
        final value = pair.substring(index + 1).trim();
        if (key.isNotEmpty) {
          // cookies.add(Cookie(key, value));
          cookies.add(Cookie(key, Uri.encodeComponent(value))); // 有时会出现逗号(ascii code 44)
        }
      }
    }
    return cookies;
  }
}
