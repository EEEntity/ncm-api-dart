import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'agent.dart';
import 'api.dart';

part 'recommend.g.dart';

 // *recommend_resource_entity
@JsonSerializable()
class RecommendResourceEntity {
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: false)
	final bool featureFirst;
  @JsonKey(defaultValue: false)
	final bool haveRcmdSongs;
  @JsonKey(defaultValue: [])
	final List<RecommendResourceRecommend> recommend;
	RecommendResourceEntity({
    required this.code,
    required this.featureFirst,
    required this.haveRcmdSongs,
    required this.recommend,
  });
	factory RecommendResourceEntity.fromJson(Map<String, dynamic> json) => _$RecommendResourceEntityFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendResourceEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendResourceRecommend {
	@JsonKey(defaultValue: 0)
	final int id;
	@JsonKey(defaultValue: 0)
	final int type;
	@JsonKey(defaultValue: '')
	final String name;
	@JsonKey(defaultValue: '')
	final String copywriter;
	@JsonKey(defaultValue: '')
	final String picUrl;
	@JsonKey(defaultValue: 0)
	final int playcount;
  @JsonKey(defaultValue: 0)
	final int createTime;
	final RecommendResourceRecommendCreator? creator;
  @JsonKey(defaultValue: 0)
	final int trackCount;
  @JsonKey(defaultValue: 0)
	final int userId;
	@JsonKey(defaultValue: '')
	final String alg;
	RecommendResourceRecommend({
    required this.id,
    required this.type,
    required this.name,
    required this.copywriter,
    required this.picUrl,
    required this.playcount,
    required this.createTime,
    this.creator,
    required this.trackCount,
    required this.userId,
    required this.alg,
  });
	factory RecommendResourceRecommend.fromJson(Map<String, dynamic> json) => _$RecommendResourceRecommendFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendResourceRecommendToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendResourceRecommendCreator {
	@JsonKey(defaultValue: 0)
	final int accountStatus;
	@JsonKey(defaultValue: 0)
	final int vipType;
	@JsonKey(defaultValue: 0)
	final int province;
	@JsonKey(defaultValue: '')
	final String avatarUrl;
	@JsonKey(defaultValue: 0)
	final int authStatus;
	@JsonKey(defaultValue: 0)
	final int userType;
	@JsonKey(defaultValue: '')
	final String nickname;
	@JsonKey(defaultValue: 0)
	final int gender;
	@JsonKey(defaultValue: 0)
	final int birthday;
	@JsonKey(defaultValue: 0)
	final int city;
	@JsonKey(defaultValue: '')
	final String backgroundUrl;
	@JsonKey(defaultValue: 0)
	final int avatarImgId;
	@JsonKey(defaultValue: 0)
	final int backgroundImgId;
	@JsonKey(defaultValue: '')
	final String detailDescription;
	@JsonKey(defaultValue: false)
	final bool defaultAvatar;
  @JsonKey(defaultValue: [])
	final List<String> expertTags;
  @JsonKey(defaultValue: 0)
	final int djStatus;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: false)
	final bool mutual;
	@JsonKey(defaultValue: '')
	final String remarkName;
	@JsonKey(defaultValue: '')
	final String avatarImgIdStr;
	@JsonKey(defaultValue: '')
	final String backgroundImgIdStr;
	@JsonKey(defaultValue: '')
	final String description;
	@JsonKey(defaultValue: 0)
	final int userId;
	@JsonKey(defaultValue: '')
	final String signature;
	@JsonKey(defaultValue: 0)
	final int authority;
	RecommendResourceRecommendCreator({
    required this.accountStatus,
    required this.vipType,
    required this.province,
    required this.avatarUrl,
    required this.authStatus,
    required this.userType,
    required this.nickname,
    required this.gender,
    required this.birthday,
    required this.city,
    required this.backgroundUrl,
    required this.avatarImgId,
    required this.backgroundImgId,
    required this.detailDescription,
    required this.defaultAvatar,
    required this.expertTags,
    required this.djStatus,
    required this.followed,
    required this.mutual,
    required this.remarkName,
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
    required this.description,
    required this.userId,
    required this.signature,
    required this.authority
  });
	factory RecommendResourceRecommendCreator.fromJson(Map<String, dynamic> json) => _$RecommendResourceRecommendCreatorFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendResourceRecommendCreatorToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *recommend_song_entity
@JsonSerializable()
class RecommendSongEntity {
  @JsonKey(defaultValue: 0)
	final int code;
	final RecommendSongData? data;
	RecommendSongEntity({
    required this.code,
    this.data,
  });
	factory RecommendSongEntity.fromJson(Map<String, dynamic> json) => _$RecommendSongEntityFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongData {
  @JsonKey(defaultValue: [])
	final List<RecommendSongDataDailySongs> dailySongs;
  @JsonKey(defaultValue: [])
	final List<dynamic> orderSongs;
  @JsonKey(defaultValue: [])
	final List<RecommendSongDataRecommendReasons> recommendReasons;
	final dynamic mvResourceInfos;
  @JsonKey(defaultValue: false)
	final bool demote;
	RecommendSongData({
    required this.dailySongs,
    required this.orderSongs,
    required this.recommendReasons,
    this.mvResourceInfos,
    required this.demote,
  });
	factory RecommendSongData.fromJson(Map<String, dynamic> json) => _$RecommendSongDataFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongs {
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int pst;
  @JsonKey(defaultValue: 0)
	final int t;
  @JsonKey(defaultValue: [])
	final List<RecommendSongDataDailySongsAr> ar;
  @JsonKey(defaultValue: [])
	final List<dynamic> alia;
  @JsonKey(defaultValue: 0.0)
	final double pop;
  @JsonKey(defaultValue: 0)
	final int st;
  @JsonKey(defaultValue: '')
	final String rt;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int v;
	final dynamic crbt;
  @JsonKey(defaultValue: '')
	final String cf;
	final RecommendSongDataDailySongsAl? al;
  @JsonKey(defaultValue: 0)
	final int dt;
	final RecommendSongDataDailySongsH? h;
	final RecommendSongDataDailySongsM? m;
	final RecommendSongDataDailySongsL? l;
	final RecommendSongDataDailySongsSq? sq;
	final RecommendSongDataDailySongsHr? hr;
	final dynamic a;
  @JsonKey(defaultValue: '')
	final String cd;
  @JsonKey(defaultValue: 0)
	final int no;
	final dynamic rtUrl;
  @JsonKey(defaultValue: 0)
	final int ftype;
  @JsonKey(defaultValue: [])
	final List<dynamic> rtUrls;
  @JsonKey(defaultValue: 0)
	final int djId;
  @JsonKey(defaultValue: 0)
	final int copyright;
  @JsonKey(name: "s_id", defaultValue: 0)
	final int sId;
  @JsonKey(defaultValue: 0)
	final int mark;
  @JsonKey(defaultValue: 0)
	final int originCoverType;
	final dynamic originSongSimpleData;
	final dynamic tagPicList;
  @JsonKey(defaultValue: false)
	final bool resourceState;
  @JsonKey(defaultValue: 0)
	final int version;
	final dynamic songJumpInfo;
	final dynamic entertainmentTags;
  @JsonKey(defaultValue: 0)
	final int single;
	final dynamic noCopyrightRcmd;
  @JsonKey(defaultValue: 0)
	final int rtype;
	final dynamic rurl;
  @JsonKey(defaultValue: 0)
	final int cp;
  @JsonKey(defaultValue: 0)
	final int mv;
  @JsonKey(defaultValue: 0)
	final int mst;
  @JsonKey(defaultValue: 0)
	final int publishTime;
  @JsonKey(defaultValue: '')
	final String reason;
  @JsonKey(defaultValue: '')
	final String recommendReason;
	final RecommendSongDataDailySongsPrivilege? privilege;
  @JsonKey(defaultValue: '')
	final String alg;
  @JsonKey(defaultValue: [])
	final List<String> tns;
	RecommendSongDataDailySongs({
    required this.name,
    required this.id,
    required this.pst,
    required this.t,
    required this.ar,
    required this.alia,
    required this.pop,
    required this.st,
    required this.rt,
    required this.fee,
    required this.v,
    this.crbt,
    required this.cf,
    this.al,
    required this.dt,
    this.h,
    this.m,
    this.l,
    this.sq,
    this.hr,
    this.a,
    required this.cd,
    required this.no,
    this.rtUrl,
    required this.ftype,
    required this.rtUrls,
    required this.djId,
    required this.copyright,
    required this.sId,
    required this.mark,
    required this.originCoverType,
    this.originSongSimpleData,
    this.tagPicList,
    required this.resourceState,
    required this.version,
    this.songJumpInfo,
    this.entertainmentTags,
    required this.single,
    this.noCopyrightRcmd,
    required this.rtype,
    this.rurl,
    required this.cp,
    required this.mv,
    required this.mst,
    required this.publishTime,
    required this.reason,
    required this.recommendReason,
    this.privilege,
    required this.alg,
    required this.tns
  });
	factory RecommendSongDataDailySongs.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsAr {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: [])
	final List<dynamic> tns;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
	RecommendSongDataDailySongsAr({
    required this.id,
    required this.name,
    required this.tns,
    required this.alias
  });
	factory RecommendSongDataDailySongsAr.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsArFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsArToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsAl {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: [])
	final List<dynamic> tns;
  @JsonKey(name: 'pic_str', defaultValue: '')
	final String picStr;
  @JsonKey(defaultValue: 0)
	final int pic;
	RecommendSongDataDailySongsAl({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.tns,
    required this.picStr,
    required this.pic
  });
	factory RecommendSongDataDailySongsAl.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsAlFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsAlToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsH {
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: 0.0)
	final double vd;
  @JsonKey(defaultValue: 0)
	final int sr;
	RecommendSongDataDailySongsH({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr
  });
	factory RecommendSongDataDailySongsH.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsHFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsHToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsM {
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: 0.0)
	final double vd;
  @JsonKey(defaultValue: 0)
	final int sr;
	RecommendSongDataDailySongsM({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr
  });
	factory RecommendSongDataDailySongsM.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsMFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsMToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsL {
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: 0.0)
	final double vd;
  @JsonKey(defaultValue: 0)
	final int sr;
	RecommendSongDataDailySongsL({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr
  });
	factory RecommendSongDataDailySongsL.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsLFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsLToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsSq {
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: 0.0)
	final double vd;
  @JsonKey(defaultValue: 0)
	final int sr;
	RecommendSongDataDailySongsSq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr
  });
	factory RecommendSongDataDailySongsSq.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsSqFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsSqToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsHr {
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int fid;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: 0.0)
	final double vd;
  @JsonKey(defaultValue: 0)
	final int sr;
	RecommendSongDataDailySongsHr({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr
  });
	factory RecommendSongDataDailySongsHr.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsHrFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsHrToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsPrivilege {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int payed;
  @JsonKey(defaultValue: 0)
	final int realPayed;
  @JsonKey(defaultValue: 0)
	final int st;
  @JsonKey(defaultValue: 0)
	final int pl;
  @JsonKey(defaultValue: 0)
	final int dl;
  @JsonKey(defaultValue: 0)
	final int sp;
  @JsonKey(defaultValue: 0)
	final int cp;
  @JsonKey(defaultValue: 0)
	final int subp;
  @JsonKey(defaultValue: false)
	final bool cs;
  @JsonKey(defaultValue: 0)
	final int maxbr;
  @JsonKey(defaultValue: 0)
	final int fl;
	final dynamic pc;
  @JsonKey(defaultValue: false)
	final bool toast;
  @JsonKey(defaultValue: 0)
	final int flag;
  @JsonKey(defaultValue: false)
	final bool paidBigBang;
  @JsonKey(defaultValue: false)
	final bool preSell;
  @JsonKey(defaultValue: 0)
	final int playMaxbr;
  @JsonKey(defaultValue: 0)
	final int downloadMaxbr;
  @JsonKey(defaultValue: '')
	final String maxBrLevel;
  @JsonKey(defaultValue: '')
	final String playMaxBrLevel;
  @JsonKey(defaultValue: '')
	final String downloadMaxBrLevel;
  @JsonKey(defaultValue: '')
	final String plLevel;
  @JsonKey(defaultValue: '')
	final String dlLevel;
  @JsonKey(defaultValue: '')
	final String flLevel;
	final dynamic rscl;
	final RecommendSongDataDailySongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  @JsonKey(defaultValue: 0)
	final int rightSource;
  @JsonKey(defaultValue: [])
	final List<RecommendSongDataDailySongsPrivilegeChargeInfoList> chargeInfoList;
  @JsonKey(defaultValue: 0)
	final int code;
	final dynamic message;
	RecommendSongDataDailySongsPrivilege({
    required this.id,
    required this.fee,
    required this.payed,
    required this.realPayed,
    required this.st,
    required this.pl,
    required this.dl,
    required this.sp,
    required this.cp,
    required this.subp,
    required this.cs,
    required this.maxbr,
    required this.fl,
    this.pc,
    required this.toast,
    required this.flag,
    required this.paidBigBang,
    required this.preSell,
    required this.playMaxbr,
    required this.downloadMaxbr,
    required this.maxBrLevel,
    required this.playMaxBrLevel,
    required this.downloadMaxBrLevel,
    required this.plLevel,
    required this.dlLevel,
    required this.flLevel,
    this.rscl,
    this.freeTrialPrivilege,
    required this.rightSource,
    required this.chargeInfoList,
    required this.code,
    this.message
  });
	factory RecommendSongDataDailySongsPrivilege.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsPrivilegeFreeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
	final dynamic listenType;
	final dynamic cannotListenReason;
	final dynamic playReason;
	final dynamic freeLimitTagType;
	RecommendSongDataDailySongsPrivilegeFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    this.listenType,
    this.cannotListenReason,
    this.playReason,
    this.freeLimitTagType
  });
	factory RecommendSongDataDailySongsPrivilegeFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsPrivilegeFreeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsPrivilegeFreeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataDailySongsPrivilegeChargeInfoList {
  @JsonKey(defaultValue: 0)
	final int rate;
	final dynamic chargeUrl;
	final dynamic chargeMessage;
  @JsonKey(defaultValue: 0)
	final int chargeType;
	RecommendSongDataDailySongsPrivilegeChargeInfoList({
    required this.rate,
    this.chargeUrl,
    this.chargeMessage,
    required this.chargeType
  });
	factory RecommendSongDataDailySongsPrivilegeChargeInfoList.fromJson(Map<String, dynamic> json) => _$RecommendSongDataDailySongsPrivilegeChargeInfoListFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataDailySongsPrivilegeChargeInfoListToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class RecommendSongDataRecommendReasons {
  @JsonKey(defaultValue: 0)
	final int songId;
  @JsonKey(defaultValue: '')
	final String reason;
  @JsonKey(defaultValue: '')
	final String reasonId;
	final dynamic targetUrl;
	RecommendSongDataRecommendReasons({
    required this.songId,
    required this.reason,
    required this.reasonId,
    this.targetUrl
  });
	factory RecommendSongDataRecommendReasons.fromJson(Map<String, dynamic> json) => _$RecommendSongDataRecommendReasonsFromJson(json);
	Map<String, dynamic> toJson() => _$RecommendSongDataRecommendReasonsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// 私人FM
@JsonSerializable()
class PersonalFMEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: [])
  final List<PersonalFMSong> data;
  PersonalFMEntity({
    required this.code,
    required this.data,
  });
  factory PersonalFMEntity.fromJson(Map<String, dynamic> json) => _$PersonalFMEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalFMSong {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int duration;
  @JsonKey(name: 'artists', defaultValue: [])
  final List<PersonalFMSongArtist> artists;
  final PersonalFMSongAlbum? album;
  final PersonalFMSongPrivilege? privilege;
  PersonalFMSong({
    required this.id,
    required this.name,
    required this.duration,
    required this.artists,
    this.album,
    this.privilege,
  });
  factory PersonalFMSong.fromJson(Map<String, dynamic> json) => _$PersonalFMSongFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMSongToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalFMSongArtist {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: '')
  final String picUrl;
  PersonalFMSongArtist({
    required this.id,
    required this.name,
    required this.picUrl,
  });
  factory PersonalFMSongArtist.fromJson(Map<String, dynamic> json) => _$PersonalFMSongArtistFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMSongArtistToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalFMSongAlbum {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int pic;
  @JsonKey(defaultValue: '')
  final String picUrl;
  PersonalFMSongAlbum({
    required this.id,
    required this.name,
    required this.pic,
    required this.picUrl,
  });
  factory PersonalFMSongAlbum.fromJson(Map<String, dynamic> json) => _$PersonalFMSongAlbumFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMSongAlbumToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PersonalFMSongPrivilege {
  // fee 含义：0=免费/无版权，1=VIP歌曲，4=购买专辑，
  // 8=非会员可播放低音质、会员可播放高音质及下载
  @JsonKey(defaultValue: 0)
  final int fee;
  @JsonKey(defaultValue: 0)
  final int st;       // < 0 为灰色歌曲（不可播）
  @JsonKey(defaultValue: '')
  final String plLevel;   // 可播放的音质等级
  @JsonKey(defaultValue: '')
  final String dlLevel;   // 可下载的音质等级
  @JsonKey(defaultValue: 0)
  final int maxbr;
  @JsonKey(defaultValue: '')
  final String maxBrLevel;
  PersonalFMSongPrivilege({
    required this.fee,
    required this.st,
    required this.plLevel,
    required this.dlLevel,
    required this.maxbr,
    required this.maxBrLevel,
  });
  factory PersonalFMSongPrivilege.fromJson(Map<String, dynamic> json) => _$PersonalFMSongPrivilegeFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMSongPrivilegeToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// 私人FM垃圾桶
@JsonSerializable()
class PersonalFMTrashEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  PersonalFMTrashEntity({required this.code});
  factory PersonalFMTrashEntity.fromJson(Map<String, dynamic> json) => _$PersonalFMTrashEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PersonalFMTrashEntityToJson(this);
  @override
  String toString() => jsonEncode(this);
}

mixin RecommendApi {
  /// 每日推荐歌曲
  /// 需要登录状态
  Future<RecommendSongEntity?> recommendSongs() async {
    return await SnowfluffMusicManager().post<RecommendSongEntity>(
      url: NetEaseMusicAPI.getRecommendSongs,
      options: createOption(),
      fromJson: (json) => RecommendSongEntity.fromJson(json)
    );
  }
  /// 每日推荐歌单
  /// 需要登录状态
  Future<RecommendResourceEntity?> recommendResource() async {
    return await SnowfluffMusicManager().post<RecommendResourceEntity>(
      url: NetEaseMusicAPI.getRecommendResource,
      options: createOption(),
      fromJson: (json) => RecommendResourceEntity.fromJson(json)
    );
  }
  /// 私人FM
  /// 需要登录状态
  Future<PersonalFMEntity?> personalFM() async {
    final result = await SnowfluffMusicManager().post<PersonalFMEntity>(
      url: NetEaseMusicAPI.getPersonalFM,
      data: {'limit': 2},
      options: createOption(
        encryptType: EncryptType.weApi,
      ),
      fromJson: (json) => PersonalFMEntity.fromJson(json),
    );
    return result;
  }
  /// 私人FM - 不感兴趣
  /// 需要登录状态
  Future<PersonalFMTrashEntity?> personalFMTrash({
    required int id,
    int time = 1 // 25,
  }) async {
    return await SnowfluffMusicManager().post<PersonalFMTrashEntity>(
      url: NetEaseMusicAPI.personalFMTrash,
      data: {
        'songId': id, // 歌曲ID
        'alg': 'RT', // 固定的'RadioTrash'
        'time': time // 当前播放到了多少秒(毫秒？)
      },
      options: createOption(
        encryptType: EncryptType.weApi,
      ),
      fromJson: (json) => PersonalFMTrashEntity.fromJson(json),
    );
  }
}
