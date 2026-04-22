import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'agent.dart';
import 'api.dart';

part 'user.g.dart';

// *bool_entity
@JsonSerializable()
class BoolEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: false)
  final bool data;
  @JsonKey(defaultValue: '')
  final String message;
  BoolEntity({
    required this.code,
    required this.data,
    required this.message,
  });
  factory BoolEntity.fromJson(Map<String, dynamic> json) => _$BoolEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BoolEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// *like_list_entity
@JsonSerializable()
class LikeListEntity {
  @JsonKey(defaultValue: [])
	final List<int> ids;
  @JsonKey(defaultValue: 0)
	final int checkPoint;
  @JsonKey(defaultValue: 0)
	final int code;
	LikeListEntity({
    required this.ids,
    required this.checkPoint,
    required this.code,
  });
	factory LikeListEntity.fromJson(Map<String, dynamic> json) => _$LikeListEntityFromJson(json);
	Map<String, dynamic> toJson() => _$LikeListEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *login_entity
@JsonSerializable()
class LoginEntity {
  @JsonKey(defaultValue: 0)
  final int loginType;
  @JsonKey(defaultValue: '')
  final String clientId;
  @JsonKey(defaultValue: 0)
  final int effectTime;
  @JsonKey(defaultValue: 0)
  final int code;
	final LoginAccount? account;
  @JsonKey(defaultValue: '')
	final String token;
	final LoginProfile? profile;
  @JsonKey(defaultValue: [])
	final List<LoginBindings>? bindings;
	LoginEntity({
    required this.loginType,
    required this.clientId,
    required this.effectTime,
    required this.code,
    this.account,
    required this.token,
    this.profile,
    this.bindings,
  });
	factory LoginEntity.fromJson(Map<String, dynamic> json) => _$LoginEntityFromJson(json);
	Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginAccount {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: '')
	final String userName;
	@JsonKey(defaultValue: 0)
	final int type;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: 0)
	final int whitelistAuthority;
  @JsonKey(defaultValue: 0)
	final int createTime;
  @JsonKey(defaultValue: '')
	final String salt;
	@JsonKey(defaultValue: 0)
	final int tokenVersion;
	@JsonKey(defaultValue: 0)
	final int ban;
	@JsonKey(defaultValue: 0)
	final int baoyueVersion;
	@JsonKey(defaultValue: 0)
	final int donateVersion;
	@JsonKey(defaultValue: 0)
	final int vipType;
	@JsonKey(defaultValue: 0)
	final int viptypeVersion;
	@JsonKey(defaultValue: false)
	final bool anonimousUser;
	@JsonKey(defaultValue: false)
	final bool uninitialized;
	LoginAccount({
    required this.id,
    required this.userName,
    required this.type,
    required this.status,
    required this.whitelistAuthority,
    required this.createTime,
    required this.salt,
    required this.tokenVersion,
    required this.ban,
    required this.baoyueVersion,
    required this.donateVersion,
    required this.vipType,
    required this.viptypeVersion,
    required this.anonimousUser,
    required this.uninitialized
  });
	factory LoginAccount.fromJson(Map<String, dynamic> json) => _$LoginAccountFromJson(json);
	Map<String, dynamic> toJson() => _$LoginAccountToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginProfile {
  @JsonKey(defaultValue: 0)
	final int userType;
  @JsonKey(defaultValue: '')
	final String avatarUrl;
  @JsonKey(defaultValue: 0)
	final int vipType;
  @JsonKey(defaultValue: 0)
	final int authStatus;
  @JsonKey(defaultValue: 0)
	final int djStatus;
  @JsonKey(defaultValue: '')
	final String detailDescription;
	final LoginProfileExperts? experts;
	final dynamic expertTags;
  @JsonKey(defaultValue: 0)
	final int accountStatus;
  @JsonKey(defaultValue: '')
	final String nickname;
  @JsonKey(defaultValue: 0)
	final int birthday;
  @JsonKey(defaultValue: 0)
	final int gender;
  @JsonKey(defaultValue: 0)
	final int province;
  @JsonKey(defaultValue: 0)
	final int city;
  @JsonKey(defaultValue: 0)
	final int avatarImgId;
  @JsonKey(defaultValue: 0)
	final int backgroundImgId;
  @JsonKey(defaultValue: false)
	final bool defaultAvatar;
  @JsonKey(defaultValue: false)
	final bool mutual;
	final dynamic remarkName;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: '')
	final String backgroundUrl;
  @JsonKey(defaultValue: '')
	final String backgroundImgIdStr;
  @JsonKey(defaultValue: '')
	final String avatarImgIdStr;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: 0)
	final int userId;
  @JsonKey(defaultValue: '')
	final String signature;
  @JsonKey(defaultValue: 0)
	final int authority;
  @JsonKey(name: "avatarImgId_str", defaultValue: '')
	final String avatarimgidStr;
  @JsonKey(defaultValue: 0)
	final int followeds;
  @JsonKey(defaultValue: 0)
	final int follows;
  @JsonKey(defaultValue: 0)
	final int eventCount;
	final dynamic avatarDetail;
  @JsonKey(defaultValue: 0)
	final int playlistCount;
  @JsonKey(defaultValue: 0)
	final int playlistBeSubscribedCount;
	LoginProfile({
    required this.userType,
    required this.avatarUrl,
    required this.vipType,
    required this.authStatus,
    required this.djStatus,
    required this.detailDescription,
    this.experts,
    this.expertTags,
    required this.accountStatus,
    required this.nickname,
    required this.birthday,
    required this.gender,
    required this.province,
    required this.city,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.defaultAvatar,
    required this.mutual,
    this.remarkName,
    required this.followed,
    required this.backgroundUrl,
    required this.backgroundImgIdStr,
    required this.avatarImgIdStr,
    required this.description,
    required this.userId,
    required this.signature,
    required this.authority,
    required this.avatarimgidStr,
    required this.followeds,
    required this.follows,
    required this.eventCount,
    this.avatarDetail,
    required this.playlistCount,
    required this.playlistBeSubscribedCount
  });
	factory LoginProfile.fromJson(Map<String, dynamic> json) => _$LoginProfileFromJson(json);
	Map<String, dynamic> toJson() => _$LoginProfileToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginProfileExperts {
	LoginProfileExperts();
	factory LoginProfileExperts.fromJson(Map<String, dynamic> json) => _$LoginProfileExpertsFromJson(json);
	Map<String, dynamic> toJson() => _$LoginProfileExpertsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginBindings {
  @JsonKey(defaultValue: 0)
	final int bindingTime;
  @JsonKey(defaultValue: 0)
	final int refreshTime;
  @JsonKey(defaultValue: '')
	final String tokenJsonStr;
  @JsonKey(defaultValue: 0)
	final int expiresIn;
  @JsonKey(defaultValue: '')
	final String url;
  @JsonKey(defaultValue: false)
	final bool expired;
  @JsonKey(defaultValue: 0)
	final int userId;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int type;
	LoginBindings({
    required this.bindingTime,
    required this.refreshTime,
    required this.tokenJsonStr,
    required this.expiresIn,
    required this.url,
    required this.expired,
    required this.userId,
    required this.id,
    required this.type
  });
	factory LoginBindings.fromJson(Map<String, dynamic> json) => _$LoginBindingsFromJson(json);
	Map<String, dynamic> toJson() => _$LoginBindingsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *qr_check_entity
@JsonSerializable()
class QrCheckEntity {
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: '')
	final String message;
	QrCheckEntity({
    required this.code,
    required this.message
  });
	factory QrCheckEntity.fromJson(Map<String, dynamic> json) => _$QrCheckEntityFromJson(json);
	Map<String, dynamic> toJson() => _$QrCheckEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *qrcode_key_entity
@JsonSerializable()
class QrcodeKeyEntity {
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: '')
	final String unikey;
	QrcodeKeyEntity({
    required this.code,
    required this.unikey
  });
	factory QrcodeKeyEntity.fromJson(Map<String, dynamic> json) => _$QrcodeKeyEntityFromJson(json);
	Map<String, dynamic> toJson() => _$QrcodeKeyEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *string_entity
@JsonSerializable()
class StringEntity {
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: '')
	final String data;
  @JsonKey(defaultValue: '')
	final String message;
	StringEntity({
    required this.code,
    required this.data,
    required this.message
  });
	factory StringEntity.fromJson(Map<String, dynamic> json) => _$StringEntityFromJson(json);
	Map<String, dynamic> toJson() => _$StringEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *user_info_entity
@JsonSerializable()
class UserInfoEntity {
	final UserInfoAccount? account;
	final UserInfoProfile? profile;
	UserInfoEntity({
    required this.account,
    required this.profile
  });
	factory UserInfoEntity.fromJson(Map<String, dynamic> json) => _$UserInfoEntityFromJson(json);
	Map<String, dynamic> toJson() => _$UserInfoEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoAccount {
  @JsonKey(defaultValue: 0)
	final int id; // 用户ID
  @JsonKey(defaultValue: '')
	final String userName; // 用户名，不是显示的昵称
  @JsonKey(defaultValue: 0)
	final int type;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: 0)
	final int whitelistAuthority;
  @JsonKey(defaultValue: 0)
	final int createTime; // 看起来是unix时间戳+后三位
  @JsonKey(defaultValue: 0)
	final int tokenVersion;
  @JsonKey(defaultValue: 0)
	final int ban; // 0
  @JsonKey(defaultValue: 0)
	final int baoyueVersion;
  @JsonKey(defaultValue: 0)
	final int donateVersion;
  @JsonKey(defaultValue: 0)
	final int vipType;
  @JsonKey(defaultValue: false)
	final bool anonimousUser;
  @JsonKey(defaultValue: false)
	final bool paidFee;
	UserInfoAccount({
    required this.id,
    required this.userName,
    required this.type,
    required this.status,
    required this.whitelistAuthority,
    required this.createTime,
    required this.tokenVersion,
    required this.ban,
    required this.baoyueVersion,
    required this.donateVersion,
    required this.vipType,
    required this.anonimousUser,
    required this.paidFee
  });
	factory UserInfoAccount.fromJson(Map<String, dynamic> json) => _$UserInfoAccountFromJson(json);
	Map<String, dynamic> toJson() => _$UserInfoAccountToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserInfoProfile {
  @JsonKey(defaultValue: 0)
	final int userId; // 用户ID，和account.id一致
  @JsonKey(defaultValue: 0)
	final int userType;
  @JsonKey(defaultValue: '')
	final String nickname; // 显示的用户昵称
  @JsonKey(defaultValue: 0)
	final int avatarImgId;
  @JsonKey(defaultValue: '')
	final String avatarUrl;
  @JsonKey(defaultValue: 0)
	final int backgroundImgId;
  @JsonKey(defaultValue: '')
	final String backgroundUrl;
  @JsonKey(defaultValue: '')
	final String signature; // 用户签名
  @JsonKey(defaultValue: 0)
	final int createTime;
  @JsonKey(defaultValue: '')
	final String userName;
  @JsonKey(defaultValue: 0)
	final int accountType;
  @JsonKey(defaultValue: '')
	final String shortUserName;
  @JsonKey(defaultValue: 0)
	final int birthday;
  @JsonKey(defaultValue: 0)
	final int authority;
  @JsonKey(defaultValue: 0)
	final int gender;
  @JsonKey(defaultValue: 0)
	final int accountStatus;
  @JsonKey(defaultValue: 0)
	final int province;
  @JsonKey(defaultValue: 0)
	final int city;
  @JsonKey(defaultValue: 0)
	final int authStatus;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: '')
	final String detailDescription;
  @JsonKey(defaultValue: false)
	final bool defaultAvatar;
	final dynamic expertTags;
	final dynamic experts;
  @JsonKey(defaultValue: 0)
	final int djStatus;
  @JsonKey(defaultValue: 0)
	final int locationStatus;
  @JsonKey(defaultValue: 0)
	final int vipType;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: false)
	final bool mutual;
  @JsonKey(defaultValue: false)
	final bool authenticated;
  @JsonKey(defaultValue: 0)
	final int lastLoginTime;
  @JsonKey(defaultValue: '')
	final String lastLoginIP;
  @JsonKey(defaultValue: '')
	final String remarkName;
  @JsonKey(defaultValue: 0)
	final int viptypeVersion;
  @JsonKey(defaultValue: 0)
	final int authenticationTypes;
	final dynamic avatarDetail;
  @JsonKey(defaultValue: false)
	final bool anchor;
	UserInfoProfile({
    required this.userId,
    required this.userType,
    required this.nickname,
    required this.avatarImgId,
    required this.avatarUrl,
    required this.backgroundImgId,
    required this.backgroundUrl,
    required this.signature,
    required this.createTime,
    required this.userName,
    required this.accountType,
    required this.shortUserName,
    required this.birthday,
    required this.authority,
    required this.gender,
    required this.accountStatus,
    required this.province,
    required this.city,
    required this.authStatus,
    required this.description,
    required this.detailDescription,
    required this.defaultAvatar,
    this.expertTags,
    this.experts,
    required this.djStatus,
    required this.locationStatus,
    required this.vipType,
    required this.followed,
    required this.mutual,
    required this.authenticated,
    required this.lastLoginTime,
    required this.lastLoginIP,
    required this.remarkName,
    required this.viptypeVersion,
    required this.authenticationTypes,
    this.avatarDetail,
    required this.anchor
  });
	factory UserInfoProfile.fromJson(Map<String, dynamic> json) => _$UserInfoProfileFromJson(json);
	Map<String, dynamic> toJson() => _$UserInfoProfileToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *user_playlist_entity
@JsonSerializable()
class UserPlaylistEntity {
  @JsonKey(defaultValue: false)
	final bool more; // 可能指是否有更多歌单
  @JsonKey(defaultValue: [])
	final List<UserPlaylistPlaylist> playlist;
  @JsonKey(defaultValue: 0)
	final int code;
	UserPlaylistEntity({
    required this.more,
    required this.playlist,
    required this.code
  });
	factory UserPlaylistEntity.fromJson(Map<String, dynamic> json) => _$UserPlaylistEntityFromJson(json);
	Map<String, dynamic> toJson() => _$UserPlaylistEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylist {
  @JsonKey(defaultValue: [])
	final List<dynamic> subscribers;
  @JsonKey(defaultValue: false)
	final bool subscribed;
	final UserPlaylistPlaylistCreator? creator;
	final dynamic artists;
	final dynamic tracks;
  @JsonKey(defaultValue: false)
	final bool top;
	final dynamic updateFrequency;
  @JsonKey(defaultValue: 0)
	final int backgroundCoverId;
  @JsonKey(defaultValue: '')
	final String backgroundCoverUrl;
  @JsonKey(defaultValue: 0)
	final int titleImage;
  @JsonKey(defaultValue: '')
	final String titleImageUrl;
  @JsonKey(defaultValue: '')
	final String englishTitle;
  @JsonKey(defaultValue: false)
	final bool opRecommend;
  @JsonKey(defaultValue: 0)
	final int subscribedCount;
  @JsonKey(defaultValue: 0)
	final int cloudTrackCount;
  @JsonKey(defaultValue: 0)
	final int userId;
  @JsonKey(defaultValue: 0)
	final int totalDuration;
  @JsonKey(defaultValue: 0)
	final int coverImgId;
  @JsonKey(defaultValue: 0)
	final int privacy;
  @JsonKey(defaultValue: 0)
	final int trackUpdateTime;
  @JsonKey(defaultValue: 0)
	final int trackCount;
  @JsonKey(defaultValue: 0)
	final int updateTime;
  @JsonKey(defaultValue: '')
	final String commentThreadId;
  @JsonKey(defaultValue: '')
	final String coverImgUrl;
  @JsonKey(defaultValue: 0)
	final int specialType;
  @JsonKey(defaultValue: false)
	final bool anonimous;
  @JsonKey(defaultValue: 0)
	final int createTime;
  @JsonKey(defaultValue: false)
	final bool highQuality;
  @JsonKey(defaultValue: false)
	final bool newImported;
  @JsonKey(defaultValue: 0)
	final int trackNumberUpdateTime;
  @JsonKey(defaultValue: 0)
	final int playCount;
  @JsonKey(defaultValue: 0)
	final int adType;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: [])
	final List<String> tags;
  @JsonKey(defaultValue: false)
	final bool ordered;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(name: "coverImgId_str", defaultValue: '')
	final String coverimgidStr;
  @JsonKey(defaultValue: false)
	final bool copied;
  @JsonKey(defaultValue: false)
	final bool containsTracks;
	UserPlaylistPlaylist({
    required this.subscribers,
    required this.subscribed,
    this.creator,
    this.artists,
    this.tracks,
    required this.top,
    this.updateFrequency,
    required this.backgroundCoverId,
    required this.backgroundCoverUrl,
    required this.titleImage,
    required this.titleImageUrl,
    required this.englishTitle,
    required this.opRecommend,
    required this.subscribedCount,
    required this.cloudTrackCount,
    required this.userId,
    required this.totalDuration,
    required this.coverImgId,
    required this.privacy,
    required this.trackUpdateTime,
    required this.trackCount,
    required this.updateTime,
    required this.commentThreadId,
    required this.coverImgUrl,
    required this.specialType,
    required this.anonimous,
    required this.createTime,
    required this.highQuality,
    required this.newImported,
    required this.trackNumberUpdateTime,
    required this.playCount,
    required this.adType,
    required this.description,
    required this.tags,
    required this.ordered,
    required this.status,
    required this.name,
    required this.id,
    required this.coverimgidStr,
    required this.copied,
    required this.containsTracks
  });
	factory UserPlaylistPlaylist.fromJson(Map<String, dynamic> json) => _$UserPlaylistPlaylistFromJson(json);
	Map<String, dynamic> toJson() => _$UserPlaylistPlaylistToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserPlaylistPlaylistCreator {
  @JsonKey(defaultValue: false)
	final bool defaultAvatar;
  @JsonKey(defaultValue: 0)
	final int province;
  @JsonKey(defaultValue: 0)
	final int authStatus;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: '')
	final String avatarUrl;
  @JsonKey(defaultValue: 0)
	final int accountStatus;
  @JsonKey(defaultValue: 0)
	final int gender;
  @JsonKey(defaultValue: 0)
	final int city;
  @JsonKey(defaultValue: 0)
	final int birthday;
  @JsonKey(defaultValue: 0)
	final int userId;
  @JsonKey(defaultValue: 0)
	final int userType;
  @JsonKey(defaultValue: '')
	final String nickname;
  @JsonKey(defaultValue: '')
	final String signature;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: '')
	final String detailDescription;
  @JsonKey(defaultValue: 0)
	final int avatarImgId;
  @JsonKey(defaultValue: 0)
	final int backgroundImgId;
  @JsonKey(defaultValue: '')
	final String backgroundUrl;
  @JsonKey(defaultValue: 0)
	final int authority;
  @JsonKey(defaultValue: false)
	final bool mutual;
  @JsonKey(defaultValue: [])
	final List<String> expertTags;
  @JsonKey(defaultValue: 0)
	final int djStatus;
  @JsonKey(defaultValue: 0)
	final int vipType;
  @JsonKey(defaultValue: '')
	final String remarkName;
  @JsonKey(defaultValue: 0)
	final int authenticationTypes;
  @JsonKey(defaultValue: '')
	final String avatarDetail;
  @JsonKey(defaultValue: '')
	final String backgroundImgIdStr;
  @JsonKey(defaultValue: false)
	final bool anchor;
  @JsonKey(defaultValue: '')
	final String avatarImgIdStr;
  @JsonKey(name: "avatarImgId_str", defaultValue: '')
	final String avatarimgidStr;
	UserPlaylistPlaylistCreator({
    required this.defaultAvatar,
    required this.province,
    required this.authStatus,
    required this.followed,
    required this.avatarUrl,
    required this.accountStatus,
    required this.gender,
    required this.city,
    required this.birthday,
    required this.userId,
    required this.userType,
    required this.nickname,
    required this.signature,
    required this.description,
    required this.detailDescription,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.backgroundUrl,
    required this.authority,
    required this.mutual,
    required this.expertTags,
    required this.djStatus,
    required this.vipType,
    required this.remarkName,
    required this.authenticationTypes,
    required this.avatarDetail,
    required this.backgroundImgIdStr,
    required this.anchor,
    required this.avatarImgIdStr,
    required this.avatarimgidStr,
  });
	factory UserPlaylistPlaylistCreator.fromJson(Map<String, dynamic> json) => _$UserPlaylistPlaylistCreatorFromJson(json);
	Map<String, dynamic> toJson() => _$UserPlaylistPlaylistCreatorToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UserLoginStateEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  final UserInfoAccount? account;
  final UserInfoProfile? profile;
  UserLoginStateEntity({
    required this.code,
    this.account,
    this.profile
  });
  factory UserLoginStateEntity.fromJson(Map<String, dynamic> json) => _$UserLoginStateEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserLoginStateEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

mixin UserApi{
  /// 登录手机接口
  /// [type] 登录方式？默认为1
  /// [https] 是否使用 HTTPS 请求，可选，默认为 true
  /// [phone] 手机号
  /// [countryCode] 国家代码，可选，默认为 '86'
  /// [captcha] 验证码，可选，提供此参数时密码失效
  /// [password] 密码，可选，需要md5加密
  /// [rememberLogin] 是否记住登录状态，可选，默认为 true
  Future<LoginEntity?> loginCellPhone({
    required String phone,
    String? password,
    String? captcha,
    String type = '1',
    String countryCode = '86',
    String rememberLogin = 'true',
    bool https = true
  }) {
    final data = {
      'type': 1,
      'https': https,
      'phone': phone,
      'countrycode': countryCode,
      'remember': rememberLogin,
      if (captcha != null)
        'captcha': captcha
      else
        'password': password ?? '',
    };
    return SnowfluffMusicManager().post<LoginEntity>(
      url: NetEaseMusicAPI.loginWithPhone,
      options: createOption(
        encryptType: EncryptType.weApi
      ),
      data: data,
      fromJson: (json) => LoginEntity.fromJson(json)
    );
  }
  /// 发送验证码
  /// [phone] 手机号
  /// [ctcode] 国家代码，可选，默认为 '86'
  Future<BoolEntity?> sendSmsCode({
    required String phone,
    String ctcode = '86',
  }) async {
    final data = {
      'ctcode': ctcode,
      'secrete': 'music_middleuser_pclogin',
      'cellphone': phone,
    };
    return await SnowfluffMusicManager().post<BoolEntity>(
      url: NetEaseMusicAPI.sendSmsCode,
      options: createOption(
        encryptType: EncryptType.weApi
      ),
      data: data,
      fromJson: (json) => BoolEntity.fromJson(json)
    );
  }
  /// 验证验证码
  /// [phone] 手机号
  /// [captcha] 验证码
  /// [ctcode] 国家代码，可选，默认为 '86'
  Future<BoolEntity?> verifySmsCode({
    required String phone,
    required String captcha,
    String ctcode = '86',
  }) async {
    final data = {
      'cellphone': phone,
      'captcha': captcha,
      'ctcode': ctcode,
    };
    return await SnowfluffMusicManager().post<BoolEntity>(
      url: NetEaseMusicAPI.verifySmsCode,
      options: createOption(
        encryptType: EncryptType.weApi
      ),
      data: data,
      fromJson: (json) => BoolEntity.fromJson(json)
    );
  }
  /// 获取二维码key
  /// [type] 类型，默认为3
  Future<QrcodeKeyEntity?> qrCodeKey({
    int type = 3
  }) async {
    final data = {
      'type': type,
      'e_r': false
    };
    return await SnowfluffMusicManager().post<QrcodeKeyEntity>(
      url: NetEaseMusicAPI.generateQrCodeKey,
      options: createOption(
        encryptType: EncryptType.eApi
      ),
      data: data,
      fromJson: (json) => QrcodeKeyEntity.fromJson(json)
    );
  }
  /// 生成二维码(本地拼接)
  /// [key] 二维码key
  String qrCode({
    required String key
  }) {
    return '$defaultUrl/login?codekey=$key';
  }
  /// 检测二维码状态
  /// [type] 类型，默认为3
  /// 800：二维码过期，801：等待扫码，802：待确认，803：授权登录成功(返回cookies)
  Future<StringEntity?> checkQrCode({
    required String key,
    int type = 3,
  }) async {
    final data = {
      'key': key,
      'type': type,
      'e_r': false
    };
    return await SnowfluffMusicManager().post<StringEntity>(
      url: NetEaseMusicAPI.checkQrCode,
      options: createOption(
        encryptType: EncryptType.eApi
      ),
      data: data,
      fromJson: (json) => StringEntity.fromJson(json)
    );
  }
  /// 用户信息，需要登录状态
  Future<UserInfoEntity?> userInfo() async {
    return await SnowfluffMusicManager().post<UserInfoEntity>(
      url: NetEaseMusicAPI.getUserInfo,
      options: createOption(
        encryptType: EncryptType.weApi
      ),
      data: {},
      fromJson: (json) => UserInfoEntity.fromJson(json)
    );
  }
  /// 用户歌单
  /// [uid] 用户id
  /// [limit] 30 // 测试时看起来没用
  /// [offset] 0
  /// [includeVideo] 未知，可能是否包含视频歌单，默认为true
  Future<UserPlaylistEntity?> userPlaylist({
    required String uid,
    int limit = 30,
    int offset = 0,
    bool includeVideo = true
  }) async {
    final data = {
      'uid': uid,
      'limit': limit,
      'offset': offset,
      'includeVideo': includeVideo
    };
    return await SnowfluffMusicManager().post<UserPlaylistEntity>(
      url: NetEaseMusicAPI.getUserPlaylist,
      options: createOption(),
      data: data,
      fromJson: (json) => UserPlaylistEntity.fromJson(json)
    );
  }
  /// 用户喜欢的歌曲列表
  /// [uid] 用户id
  /// 这里返回的ids不是顺序的，用playlist的接口返回顺序正确
  Future<LikeListEntity?> userLikeList({
    required String uid
  }) async {
    final data = {
      'uid': uid
    };
    return await SnowfluffMusicManager().post<LikeListEntity>(
      url: NetEaseMusicAPI.getUserLikeList,
      options: createOption(),
      data: data,
      fromJson: (json) => LikeListEntity.fromJson(json)
    );
  }
  /// 退出登录
  Future<BoolEntity?> logout() async {
    return await SnowfluffMusicManager().post<BoolEntity>(
      url: NetEaseMusicAPI.logout,
      options: createOption(),
      data: {},
      fromJson: (json) => BoolEntity.fromJson(json)
    );
  }
  /// 首页发现-圆形图标入口列表，应该没用
  Future<dynamic> homepageDragonBall() async {
    return await SnowfluffMusicManager().post<dynamic>(
      url: '/api/homepage/dragon/ball/static',
      options: createOption(),
      data: {},
      fromJson: (json) => json
    );
  }
  /// 登录状态
  Future<UserLoginStateEntity?> loginStatus() async {
    return await SnowfluffMusicManager().post<UserLoginStateEntity>(
      url: NetEaseMusicAPI.getLoginStatus,
      options: createOption(),
      data: {
        'os': 'pc'
      },
      fromJson: (json) => UserLoginStateEntity.fromJson(json)
    );
  }
}
