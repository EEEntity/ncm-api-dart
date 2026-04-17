import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'agent.dart';
import 'api.dart';

part 'album.g.dart';

@JsonSerializable()
class AlbumInfoEntityV1 {
  @JsonKey(defaultValue: false)
  bool resourceState;
  @JsonKey(defaultValue: [])
  List<AlbumInfoSongs> songs;
  @JsonKey(defaultValue: 0)
  int code;
  AlbumInfoAlbumV1? album;
  AlbumInfoEntityV1({
    required this.resourceState,
    required this.songs,
    required this.code,
    this.album,
  });
  factory AlbumInfoEntityV1.fromJson(Map<String, dynamic> json) => _$AlbumInfoEntityV1FromJson(json);
  Map<String, dynamic> toJson() => _$AlbumInfoEntityV1ToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class AlbumInfoSongs {
  @JsonKey(defaultValue: "未知歌曲: 无name")
  String name; // 歌曲标题
  @JsonKey(defaultValue: 0)
  int id; // 歌曲ID
  @JsonKey(defaultValue: 0)
  int t; // 枚举，0是一般类型，1是云盘上传但没有公开对应，2是云盘上传(仅自己可访问)
  @JsonKey(defaultValue: [])
  List<AlbumInfoSongsAr> ar; // 歌手列表
  @JsonKey(defaultValue: [])
  List<String> alia; // 别名列表，第一个元素是副标题
  @JsonKey(defaultValue: 0.0)
  double pop; // 歌曲热度，取值范围[0.0, 100.0]
  @JsonKey(defaultValue: 0)
  int fee; // 付费类型枚举，0是免费/无版权，1是VIP歌曲，4是购买专辑，8是非会员免费播放低音质&会员可播放高音质及下载；1或8均可单独购买2元单曲
  AlbumInfoSongsAl? al; // 专辑信息
  @JsonKey(defaultValue: 0)
  int djId; // 电台ID，非电台歌曲为0
  AlbumInfoSongsSq? sq; // 无损质量文件信息
  AlbumInfoSongsH? h; // 高质量文件信息
  AlbumInfoSongsM? m; // 中质量文件信息
  AlbumInfoSongsL? l; // 低质量文件信息
  @JsonKey(defaultValue: 0)
  int dt; // 歌曲时长
  // dynamic hr
  AlbumInfoSongsPrivilege? privilege; // 歌曲权限信息
  // cd与no字段不再需要
  AlbumInfoSongs({
    required this.name,
    required this.id,
    required this.t,
    required this.ar,
    required this.alia,
    required this.pop,
    required this.fee,
    this.al,
    required this.djId,
    this.sq,
    this.h,
    this.m,
    this.l,
    required this.dt,
    // this.hr,
    this.privilege,
  });
  factory AlbumInfoSongs.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumInfoSongsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
  /*
	List<dynamic>? rtUrls = []; //Vec<String(?)>, 常为空列表, 功能未知
	int? st = 0; // 功能未知
	dynamic noCopyrightRcmd; //Option<NoCopyrightRcmd>, 不能判断出歌曲有无版权
	dynamic songJumpInfo;
	int? no = 0;
	int? mv = 0; // u64, 非零表示有MV ID，不需要
	int? v = 0; // u64, 常为[1, ?]任意数字, 代表歌曲当前信息版本
	String? cd = '';
	int? rtype = 0; // 常为0，功能未知
	dynamic rurl; // Option<String(?)>, 常为None，功能未知
  int? pst = 0; // 功能未知
	String? rt = ''; // Option<String>, None、空白字串、或者类似`600902000007902089`的字符串，功能未知
	int? mst = 0; // u32, 偶尔为0, 常为9，功能未知
	int? cp = 0; // u64, 功能未知
	dynamic crbt; // Option<String>, None或字符串表示的十六进制，功能未知
	String? cf = ''; // Option<String>, 空白字串或者None，功能未知
	dynamic rtUrl; // Option<String(?)>, 常为None, 功能未知
	int? ftype = 0;
	dynamic a;
  */
}

@JsonSerializable()
class AlbumInfoSongsAr {
  @JsonKey(defaultValue: 0)
	int id; // 歌手id
  @JsonKey(defaultValue: "未知歌手: 无name")
	String name; // 歌手名称
  @JsonKey(defaultValue: [])
	List<String> tns; // 歌手别名列表
	AlbumInfoSongsAr({
    required this.id,
    required this.name,
    required this.tns,
  });
	factory AlbumInfoSongsAr.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsArFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsArToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsAl {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: "未知专辑: 无name")
	final String name;
  @JsonKey(defaultValue: '')
	final String picUrl;
	@JsonKey(name: "pic_str", defaultValue: '')
	final String picStr;
  @JsonKey(defaultValue: 0)
	final int pic;
	AlbumInfoSongsAl({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.picStr,
    required this.pic,
  });
	factory AlbumInfoSongsAl.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsAlFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsAlToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// 也许可以合并AlbumInfoSongsH、AlbumInfoSongsSq、AlbumInfoSongsL、AlbumInfoSongsM为一个类，增加一个字段表示质量等级
/*
// 定义一个通用类
@JsonSerializable()
class AudioQuality {
  @JsonKey(defaultValue: 0)
  final int br;
  // ... 其他字段 ...
}
// 在歌曲类中使用
class AlbumInfoSongs {
  AudioQuality? h;
  AudioQuality? m;
  AudioQuality? l;
  AudioQuality? sq;
}
*/

@JsonSerializable()
class AlbumInfoSongsH {
  @JsonKey(defaultValue: 0)
	final int br; // 比特率
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
  final int size; // 文件大小
  @JsonKey(defaultValue: 0.0)
	final double vd; // 音量增益
  @JsonKey(defaultValue: 0)
	final int sr; // 采样率
	AlbumInfoSongsH({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory AlbumInfoSongsH.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsHFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsHToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsSq {
  @JsonKey(defaultValue: 0)
	final int br; // 比特率
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size; // 文件大小
  @JsonKey(defaultValue: 0.0)
	final double vd; // 音量增益
  @JsonKey(defaultValue: 0)
	final int sr; // 采样率
	AlbumInfoSongsSq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory AlbumInfoSongsSq.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsSqFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsSqToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsL {
  @JsonKey(defaultValue: 0)
	final int br; // 比特率
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size; // 文件大小
  @JsonKey(defaultValue: 0.0)
	final double vd; // 音量增益
  @JsonKey(defaultValue: 0)
	final int sr; // 采样率
	AlbumInfoSongsL({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory AlbumInfoSongsL.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsLFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsLToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsM {
  @JsonKey(defaultValue: 0)
	final int br; // 比特率
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size; // 文件大小
  @JsonKey(defaultValue: 0.0)
	final double vd; // 音量增益
  @JsonKey(defaultValue: 0)
	final int sr; // 采样率
	AlbumInfoSongsM({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory AlbumInfoSongsM.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsMFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsMToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsPrivilege {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int payed;
  @JsonKey(defaultValue: 0)
	final int st; // 小于0时为灰色歌曲, 使用上传云盘的方法解灰后 st == 0
  @JsonKey(defaultValue: 0)
	final int pl; // 播放音质？
  @JsonKey(defaultValue: 0)
	final int dl; // 下载音质？
  @JsonKey(defaultValue: 0)
	final int sp; // 未知字段，好像也没用
  @JsonKey(defaultValue: 0)
	final int cp; // 上面的功能未知，这里也未知
  @JsonKey(defaultValue: 0)
	final int subp; // 子权限标识？未知
  @JsonKey(defaultValue: false)
	final bool cs; // 是否为云盘歌曲
  @JsonKey(defaultValue: 0)
	final int maxbr; // 最大比特率？
  @JsonKey(defaultValue: 0)
	final int fl; // 不知道是什么，可能和音质有关
  @JsonKey(defaultValue: false)
	final bool toast; //是否「由于版权保护，您所在的地区暂时无法使用。」
  @JsonKey(defaultValue: 0)
	final int flag; // 未知，好像根本没用
  @JsonKey(defaultValue: false)
	final bool preSell; // 是否为预售歌曲？
  @JsonKey(defaultValue: 0)
	final int playMaxbr; // 播放最大比特率？
  @JsonKey(defaultValue: 0)
	final int downloadMaxbr; // 下载最大比特率？
  @JsonKey(defaultValue: '')
	final String maxBrLevel; // 歌曲最高音质
  @JsonKey(defaultValue: '')
	final String playMaxBrLevel; // 播放最高比特率等级？
  @JsonKey(defaultValue: '')
	final String downloadMaxBrLevel; // 下载最高比特率等级？
  @JsonKey(defaultValue: '')
	final String plLevel; //当前用户的该歌曲最高试听音质
  @JsonKey(defaultValue: '')
	final String dlLevel; //当前用户的该歌曲最高下载音质
  @JsonKey(defaultValue: '')
	final String flLevel; // 免费用户的该歌曲播放音质
	dynamic rscl;
  dynamic message;
	final AlbumInfoSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  @JsonKey(defaultValue: 0)
	final int rightSource; // 可能没用
  @JsonKey(defaultValue: [])
	final List<AlbumInfoSongsPrivilegeChargeInfoList> chargeInfoList;
  @JsonKey(defaultValue: 0)
	final int code; // 猜测是状态码
	AlbumInfoSongsPrivilege({
    required this.id,
    required this.fee,
    required this.payed,
    required this.st,
    required this.pl,
    required this.dl,
    required this.sp,
    required this.cp,
    required this.subp,
    required this.cs,
    required this.maxbr,
    required this.fl,
    required this.toast,
    required this.flag,
    required this.preSell,
    required this.playMaxbr,
    required this.downloadMaxbr,
    required this.maxBrLevel,
    required this.playMaxBrLevel,
    required this.downloadMaxBrLevel,
    required this.plLevel,
    required this.dlLevel,
    required this.flLevel,
    this.freeTrialPrivilege,
    required this.chargeInfoList,
    required this.rightSource,
    required this.code,
    this.rscl,
    this.message,
  });
	factory AlbumInfoSongsPrivilege.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsPrivilegeFreeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
	dynamic listenType;
	dynamic cannotListenReason;
	dynamic playReason;
	dynamic freeLimitTagType;
	AlbumInfoSongsPrivilegeFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    this.listenType,
    this.cannotListenReason,
    this.playReason,
    this.freeLimitTagType,
  });
	factory AlbumInfoSongsPrivilegeFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsPrivilegeFreeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsPrivilegeFreeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoSongsPrivilegeChargeInfoList {
  @JsonKey(defaultValue: 0)
	final int rate;
	dynamic chargeUrl;
	dynamic chargeMessage;
  @JsonKey(defaultValue: 0)
	final int chargeType;
	AlbumInfoSongsPrivilegeChargeInfoList({
    required this.rate,
    this.chargeUrl,
    this.chargeMessage,
    required this.chargeType,
  });
	factory AlbumInfoSongsPrivilegeChargeInfoList.fromJson(Map<String, dynamic> json) => _$AlbumInfoSongsPrivilegeChargeInfoListFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoSongsPrivilegeChargeInfoListToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumV1 {
  @JsonKey(defaultValue: [])
	final List<dynamic> songs; // v1接口用上面的AlbumInfoSongs
  // List<int> songIds = songs.map((e) => int.tryParse(e.toString()) ?? 0).toList(); // 将歌曲ID转换为整数列表，不确定
  @JsonKey(defaultValue: false)
	final bool paid;
  @JsonKey(defaultValue: false)
	final bool onSale;
  @JsonKey(defaultValue: 0)
	final int mark;
	// dynamic awardTags;
	// dynamic displayTags;
  @JsonKey(defaultValue: [])
	List<AlbumInfoAlbumArtists> artists;
  @JsonKey(defaultValue: 0)
	final int picId;
	AlbumInfoAlbumArtist? artist;
  @JsonKey(defaultValue: 0)
	final int copyrightId;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: 0)
	final int publishTime;
  @JsonKey(defaultValue: '')
	final String company;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: '')
	final String commentThreadId;
  @JsonKey(defaultValue: '')
	final String blurPicUrl;
  @JsonKey(defaultValue: 0)
	final int companyId;
  @JsonKey(defaultValue: 0)
	final int pic;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: '')
	final String subType;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: '')
	final String tags;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: '')
	final String type;
  @JsonKey(defaultValue: 0)
	final int size;
	@JsonKey(name: "picId_str")
	final String picidStr;
	AlbumInfoAlbumInfo? info;
	AlbumInfoAlbumV1({
    required this.songs,
    required this.paid,
    required this.onSale,
    required this.mark,
    required this.artists,
    required this.picId,
    this.artist,
    required this.copyrightId,
    required this.briefDesc,
    required this.publishTime,
    required this.company,
    required this.picUrl,
    required this.commentThreadId,
    required this.blurPicUrl,
    required this.companyId,
    required this.pic,
    required this.status,
    required this.subType,
    required this.alias,
    required this.description,
    required this.tags,
    required this.name,
    required this.id,
    required this.type,
    required this.size,
    required this.picidStr,
    this.info,
  });
	factory AlbumInfoAlbumV1.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumV1FromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumV1ToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumArtists {
  @JsonKey(defaultValue: 0)
	final int img1v1Id;
  @JsonKey(defaultValue: 0)
	final int topicPerson;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: 0)
	final int musicSize;
  @JsonKey(defaultValue: 0)
	final int albumSize;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: '')
	final String img1v1Url;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: '')
	final String trans; // 为什么不是List<string>？
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
	@JsonKey(name: "img1v1Id_str", defaultValue: '')
	final String img1v1idStr;
	AlbumInfoAlbumArtists({
    required this.img1v1Id,
    required this.topicPerson,
    required this.picId,
    required this.briefDesc,
    required this.musicSize,
    required this.albumSize,
    required this.picUrl,
    required this.img1v1Url,
    required this.followed,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.img1v1idStr
  });
	factory AlbumInfoAlbumArtists.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumArtistsFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumArtistsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumArtist {
  @JsonKey(defaultValue: 0)
	final int img1v1Id;
  @JsonKey(defaultValue: 0)
	final int topicPerson;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: 0)
	final int musicSize;
  @JsonKey(defaultValue: 0)
	final int albumSize;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: '')
	final String img1v1Url;
  @JsonKey(defaultValue: false)
	final bool followed; // 是否关注，可能需要去掉final，或者直接在主程序完成状态更新
  @JsonKey(defaultValue: '')
	final String trans;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
	@JsonKey(name: "picId_str", defaultValue: '')
	final String picidStr;
  @JsonKey(defaultValue: [])
	final List<String> transNames;
	@JsonKey(name: "img1v1Id_str", defaultValue: '')
	final String img1v1idStr;
	AlbumInfoAlbumArtist({
    required this.img1v1Id,
    required this.topicPerson,
    required this.picId,
    required this.briefDesc,
    required this.musicSize,
    required this.albumSize,
    required this.picUrl,
    required this.img1v1Url,
    required this.followed,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.picidStr,
    required this.transNames,
    required this.img1v1idStr
  });
	factory AlbumInfoAlbumArtist.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumArtistFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumArtistToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumInfo {
	final AlbumInfoAlbumInfoCommentThread? commentThread;
	// dynamic latestLikedUsers; 不care额外的社交功能
  @JsonKey(defaultValue: false)
	final bool liked;
	dynamic comments; // 评论，不知道什么类型
  @JsonKey(defaultValue: 0)
	final int resourceType;
	@JsonKey(defaultValue: 0)
	final int resourceId;
	@JsonKey(defaultValue: 0)
	final int commentCount;
	@JsonKey(defaultValue: 0)
	final int likedCount;
	@JsonKey(defaultValue: 0)
	final int shareCount;
  @JsonKey(defaultValue: '')
	final String threadId;
	AlbumInfoAlbumInfo({
    this.commentThread,
    required this.liked,
    this.comments,
    required this.resourceType,
    required this.resourceId,
    required this.commentCount,
    required this.likedCount,
    required this.shareCount,
    required this.threadId
  });
	factory AlbumInfoAlbumInfo.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumInfoFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumInfoToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumInfoCommentThread {
  @JsonKey(defaultValue: '')
	final String id;
	final AlbumInfoAlbumInfoCommentThreadResourceInfo? resourceInfo;
	@JsonKey(defaultValue: 0)
	final int resourceType;
	@JsonKey(defaultValue: 0)
	final int commentCount;
	@JsonKey(defaultValue: 0)
	final int likedCount;
	@JsonKey(defaultValue: 0)
	final int shareCount;
	@JsonKey(defaultValue: 0)
	final int hotCount;
	// dynamic latestLikedUsers; // 同上，去掉最近点赞用户列表
  @JsonKey(defaultValue: 0)
	final int resourceId;
	@JsonKey(defaultValue: 0)
	final int resourceOwnerId;
	@JsonKey(defaultValue: '')
	final String resourceTitle;
	AlbumInfoAlbumInfoCommentThread({
    required this.id,
    this.resourceInfo,
    required this.resourceType,
    required this.commentCount,
    required this.likedCount,
    required this.shareCount,
    required this.hotCount,
    required this.resourceId,
    required this.resourceOwnerId,
    required this.resourceTitle
  });
	factory AlbumInfoAlbumInfoCommentThread.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumInfoCommentThreadFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumInfoCommentThreadToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class AlbumInfoAlbumInfoCommentThreadResourceInfo {
  @JsonKey(defaultValue: 0)
	final int id;
	@JsonKey(defaultValue: 0)
	final int userId;
	@JsonKey(defaultValue: '')
	final String name;
	@JsonKey(defaultValue: '')
	final String imgUrl;
	dynamic creator;
	dynamic encodedId;
	dynamic subTitle;
	dynamic webUrl;
	AlbumInfoAlbumInfoCommentThreadResourceInfo({
    required this.id,
    required this.userId,
    required this.name,
    required this.imgUrl,
    required this.creator,
    required this.encodedId,
    required this.subTitle,
    required this.webUrl,
  });
	factory AlbumInfoAlbumInfoCommentThreadResourceInfo.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumInfoCommentThreadResourceInfoFromJson(json);
	Map<String, dynamic> toJson() => _$AlbumInfoAlbumInfoCommentThreadResourceInfoToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}


// 新专辑相关实体类，同样适用于艺术家的专辑
@JsonSerializable()
class NewAlbumEntity {
  @JsonKey(defaultValue: 0)
  final int total;
  @JsonKey(defaultValue: [])
  final List<NewAlbumAlbums> albums;
  @JsonKey(defaultValue: 0)
  final int code;
  NewAlbumEntity({
    required this.total,
    required this.albums,
    required this.code,
  });
  factory NewAlbumEntity.fromJson(Map<String, dynamic> json) => _$NewAlbumEntityFromJson(json);
  Map<String, dynamic> toJson() => _$NewAlbumEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewAlbumAlbums {
  @JsonKey(defaultValue: [])
  final List<dynamic> songs;
  @JsonKey(defaultValue: false)
  final bool paid;
  @JsonKey(defaultValue: false)
  final bool onSale;
  @JsonKey(defaultValue: 0)
  final int mark;
  // dynamic awardTags;
  // dynamic displayTags;
  @JsonKey(defaultValue: [])
  final List<NewAlbumAlbumsArtists> artists;
  @JsonKey(defaultValue: 0)
  final int copyrightId;
  @JsonKey(defaultValue: 0)
  final int picId;
  NewAlbumAlbumsArtist? artist;
  @JsonKey(defaultValue: '')
  final String briefDesc;
  @JsonKey(defaultValue: 0)
  final int publishTime;
  @JsonKey(defaultValue: '')
  final String company;
  @JsonKey(defaultValue: '')
  final String picUrl;
  @JsonKey(defaultValue: '')
  final String commentThreadId;
  @JsonKey(defaultValue: '')
  final String blurPicUrl;
  @JsonKey(defaultValue: 0)
  final int companyId;
  @JsonKey(defaultValue: 0)
  final int pic;
  @JsonKey(defaultValue: [])
  final List<dynamic> alias;
  @JsonKey(defaultValue: 0)
  final int status;
  @JsonKey(defaultValue: '')
  final String subType;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: '')
  final String tags;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String type;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(name: "picId_str", defaultValue: '')
  final String picidStr;
  NewAlbumAlbums({
    required this.songs,
    required this.paid,
    required this.onSale,
    required this.mark,
    required this.artists,
    required this.copyrightId,
    required this.picId,
    this.artist,
    required this.briefDesc,
    required this.publishTime,
    required this.company,
    required this.picUrl,
    required this.commentThreadId,
    required this.blurPicUrl,
    required this.companyId,
    required this.pic,
    required this.alias,
    required this.status,
    required this.subType,
    required this.description,
    required this.tags,
    required this.name,
    required this.id,
    required this.type,
    required this.size,
    required this.picidStr
  });
  factory NewAlbumAlbums.fromJson(Map<String, dynamic> json) => _$NewAlbumAlbumsFromJson(json);
  Map<String, dynamic> toJson() => _$NewAlbumAlbumsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewAlbumAlbumsArtists {
  @JsonKey(defaultValue: 0)
  final int img1v1Id;
  @JsonKey(defaultValue: 0)
  final int topicPerson;
  @JsonKey(defaultValue: 0)
  final int picId;
  @JsonKey(defaultValue: '')
  final String briefDesc;
  @JsonKey(defaultValue: 0)
  final int musicSize;
  @JsonKey(defaultValue: 0)
  final int albumSize;
  @JsonKey(defaultValue: '')
  final String picUrl;
  @JsonKey(defaultValue: '')
  final String img1v1Url;
  @JsonKey(defaultValue: false)
  final bool followed;
  @JsonKey(defaultValue: '')
  final String trans;
  @JsonKey(defaultValue: [])
  final List<dynamic> alias;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(name: "img1v1Id_str", defaultValue: '')
  final String img1v1idStr;
  NewAlbumAlbumsArtists({
    required this.img1v1Id,
    required this.topicPerson,
    required this.picId,
    required this.briefDesc,
    required this.musicSize,
    required this.albumSize,
    required this.picUrl,
    required this.img1v1Url,
    required this.followed,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.img1v1idStr,
  });
  factory NewAlbumAlbumsArtists.fromJson(Map<String, dynamic> json) => _$NewAlbumAlbumsArtistsFromJson(json);
  Map<String, dynamic> toJson() => _$NewAlbumAlbumsArtistsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewAlbumAlbumsArtist {
  @JsonKey(defaultValue: 0)
  final int img1v1Id;
  @JsonKey(defaultValue: 0)
  final int topicPerson;
  @JsonKey(defaultValue: 0)
  final int picId;
  @JsonKey(defaultValue: '')
  final String briefDesc;
  @JsonKey(defaultValue: 0)
  final int musicSize;
  @JsonKey(defaultValue: 0)
  final int albumSize;
  @JsonKey(defaultValue: '')
  final String picUrl;
  @JsonKey(defaultValue: '')
  final String img1v1Url;
  @JsonKey(defaultValue: false)
  final bool followed;
  @JsonKey(defaultValue: '')
  final String trans;
  @JsonKey(defaultValue: [])
  final List<dynamic> alias;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(name: "picId_str", defaultValue: '')
  final String picidStr;
  @JsonKey(defaultValue: [])
  final List<String> transNames;
  @JsonKey(name: "img1v1Id_str", defaultValue: '')
  final String img1v1idStr;
  NewAlbumAlbumsArtist({
    required this.img1v1Id,
    required this.topicPerson,
    required this.picId,
    required this.briefDesc,
    required this.musicSize,
    required this.albumSize,
    required this.picUrl,
    required this.img1v1Url,
    required this.followed,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.picidStr,
    required this.transNames,
    required this.img1v1idStr
  });
  factory NewAlbumAlbumsArtist.fromJson(Map<String, dynamic> json) => _$NewAlbumAlbumsArtistFromJson(json);
  Map<String, dynamic> toJson() => _$NewAlbumAlbumsArtistToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// 专辑详情
@JsonSerializable()
class AlbumInfoEntity {
  AlbumInfoAlbum? album;
  @JsonKey(defaultValue: 0)
  final int code;
  AlbumInfoEntity({
    required this.code,
    this.album
  });
  factory AlbumInfoEntity.fromJson(Map<String, dynamic> json) => _$AlbumInfoEntityFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumInfoEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// 专辑详情/album
@JsonSerializable()
class AlbumInfoAlbum {
  @JsonKey(defaultValue: [])
  final List<AlbumInfoAlbumSongs> songs; // 专辑内歌曲列表
  @JsonKey(defaultValue: [])
  List<AlbumInfoAlbumArtists> artists; // 专辑的歌手列表
  AlbumInfoAlbumArtist? artist; // 专辑主歌手
  @JsonKey(defaultValue: 0)
  final int publishTime; // 发布时间
  @JsonKey(defaultValue: '')
  final String picUrl; // 专辑封面URL
  @JsonKey(defaultValue: '')
  final String name; // 专辑名称
  @JsonKey(defaultValue: 0)
  final int id; // 专辑ID
  @JsonKey(defaultValue: 0)
  final int size; // 专辑内歌曲数量
  AlbumInfoAlbum({
    required this.songs,
    required this.artists,
    this.artist,
    required this.publishTime,
    required this.picUrl,
    required this.name,
    required this.id,
    required this.size,
  });
  factory AlbumInfoAlbum.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumInfoAlbumToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// 专辑内album下歌曲实体
@JsonSerializable()
class AlbumInfoAlbumSongs{
  @JsonKey(defaultValue: [])
  final List<ArtistEntity> artists; // 专辑下歌曲的歌手列表
  @JsonKey(defaultValue: '')
  final String name; // 歌曲名称
  @JsonKey(defaultValue: '')
  final String disc; // 专辑内歌曲所在的碟片名
  @JsonKey(defaultValue: 0)
  final int no; // 专辑内歌曲的碟片内序号
  @JsonKey(defaultValue: 0)
  final int id; // 歌曲ID
  @JsonKey(defaultValue: 0)
  final int duration; // 歌曲时长，单位毫秒
  AlbumInfoAlbumSongs({
    required this.artists,
    required this.name,
    required this.disc,
    required this.no,
    required this.id,
    required this.duration,
  });
  factory AlbumInfoAlbumSongs.fromJson(Map<String, dynamic> json) => _$AlbumInfoAlbumSongsFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumInfoAlbumSongsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// 专辑/专辑下歌曲的歌手，同时适用artists/artist
@JsonSerializable()
class ArtistEntity {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  ArtistEntity({
    required this.id,
    required this.name,
  });
  factory ArtistEntity.fromJson(Map<String, dynamic> json) => _$ArtistEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}


mixin AlbumApi {
  /// 最新专辑
  /// [limit] 可选，默认10
  /// [offset] 可选，默认0
  /// [area] 地区可选，默认ALL:全部,ZH:华语,EA:欧美,KR:韩国,JP:日本
  /// [total] 是否请求全部，默认为total
  Future<NewAlbumEntity?> newAlbum({
    int limit = 10,
    int offset = 0,
    String area = 'ALL',
    bool total = true,
  }) async {
    final data = {
      'limit': limit,
      'offset': offset,
      'area': area,
      'total': total,
    };
    return await SnowfluffMusicManager().post<NewAlbumEntity>(
      url: NetEaseMusicAPI.newAlbum,
      options: createOption(),
      data: data,
      // 这里提示需要补上fromJson参数
      fromJson: (json) => NewAlbumEntity.fromJson(json),
    );
  }
  /// 专辑内容，用户获取专辑内歌曲/歌手信息/封面URL/碟片/发布时间戳
  /// [id] 专辑ID
  Future<AlbumInfoEntity?> albumInfo({
    required int id
  }) async {
    return await SnowfluffMusicManager().post<AlbumInfoEntity>(
      url: 'https://interface3.music.163.com${NetEaseMusicAPI.getAlbumInfo}/$id',
      // 找不到最全返回的接口了，先用这个吧
      // data: {'id': id},
      options: createOption(),
      fromJson: (json) => AlbumInfoEntity.fromJson(json),
    );
  }
  /// 专辑内容V1，只用于获取专辑简介/描述
  /// [id] 专辑ID
  Future<AlbumInfoEntityV1?> albumInfoV1({required int id}) async {
    return await SnowfluffMusicManager().post<AlbumInfoEntityV1>(
      url: '${NetEaseMusicAPI.getAlbumInfoV1}/$id', 
      options: createOption(),
      fromJson: (json) => AlbumInfoEntityV1.fromJson(json),
    );
  }
}
