import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'agent.dart';
import 'api.dart';

part 'song.g.dart';


// *new_song_entity
@JsonSerializable()
class NewSongEntity {
  @JsonKey(defaultValue: [])
	final List<NewSongData> data;
  @JsonKey(defaultValue: 0)
	final int code;
	NewSongEntity({
    required this.data,
    required this.code,
  });
	factory NewSongEntity.fromJson(Map<String, dynamic> json) => _$NewSongEntityFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongData {
  @JsonKey(defaultValue: false)
	final bool starred;
  @JsonKey(defaultValue: 0)
	final int popularity;
	@JsonKey(defaultValue: 0)
  final int starredNum;
	@JsonKey(defaultValue: 0)
  final int playedNum;
	@JsonKey(defaultValue: 0)
  final int dayPlays;
	@JsonKey(defaultValue: 0)
  final int hearTime;
  @JsonKey(defaultValue: '')
	final String mp3Url;
	final NewSongDataPrivilege? privilege;
  @JsonKey(defaultValue: 0)
	final int st;
  @JsonKey(defaultValue: false)
	final bool exclusive;
  @JsonKey(defaultValue: [])
	final List<NewSongDataArtists> artists;
  @JsonKey(defaultValue: 0)
	final int score;
	final NewSongDataHMusic? hMusic;
	final NewSongDataMMusic? mMusic;
	final NewSongDataLMusic? lMusic;
	final NewSongDataAlbum? album;
  @JsonKey(defaultValue: '')
	final String commentThreadId;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int mvid;
  @JsonKey(defaultValue: '')
	final String copyFrom;
  @JsonKey(defaultValue: '')
	final String ringtone;
  @JsonKey(defaultValue: '')
	final String disc;
  @JsonKey(defaultValue: 0)
	final int no;
  @JsonKey(defaultValue: 0)
	final int rtype;
  @JsonKey(defaultValue: 0)
	final int copyrightId;
	final NewSongDataBMusic? bMusic;
  @JsonKey(defaultValue: '')
	final String rtUrl;
  @JsonKey(defaultValue: 0)
	final int ftype;
  @JsonKey(defaultValue: 0)
	final int position;
  @JsonKey(defaultValue: 0)
	final int duration;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;

	NewSongData({
    required this.starred,
    required this.popularity,
    required this.starredNum,
    required this.playedNum,
    required this.dayPlays,
    required this.hearTime,
    required this.mp3Url,
    this.privilege,
    required this.st,
    required this.exclusive,
    required this.artists,
    required this.score,
    this.hMusic,
    this.mMusic,
    this.lMusic,
    this.album,
    required this.commentThreadId,
    required this.fee,
    required this.mvid,
    required this.copyFrom,
    required this.ringtone,
    required this.disc,
    required this.no,
    required this.rtype,
    required this.copyrightId,
    required this.bMusic,
    required this.rtUrl,
    required this.ftype,
    required this.position,
    required this.duration,
		required this.status, 
		required this.alias, 
		required this.name, 
		required this.id, 
  });
	factory NewSongData.fromJson(Map<String, dynamic> json) => _$NewSongDataFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataPrivilege {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int payed;
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
  @JsonKey(defaultValue: false)
	final bool toast;
  @JsonKey(defaultValue: 0)
	final int flag;
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
	final NewSongDataPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
  @JsonKey(defaultValue: 0)
	final int rightSource;
  @JsonKey(defaultValue: [])
	final List<NewSongDataPrivilegeChargeInfoList> chargeInfoList;
	NewSongDataPrivilege({
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
    required this.rightSource,
    required this.chargeInfoList,
  });
	factory NewSongDataPrivilege.fromJson(Map<String, dynamic> json) => _$NewSongDataPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataPrivilegeFreeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
  @JsonKey(defaultValue: 0)
	final int listenType;
  @JsonKey(defaultValue: 0)
	final int cannotListenReason;
	NewSongDataPrivilegeFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.listenType,
    required this.cannotListenReason,
  });
	factory NewSongDataPrivilegeFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$NewSongDataPrivilegeFreeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataPrivilegeFreeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataPrivilegeChargeInfoList {
  @JsonKey(defaultValue: 0)
	final int rate;
  @JsonKey(defaultValue: '')
	final String chargeUrl;
  @JsonKey(defaultValue: '')
	final String chargeMessage;
  @JsonKey(defaultValue: 0)
	final int chargeType;
	NewSongDataPrivilegeChargeInfoList({
    required this.rate,
    required this.chargeUrl,
    required this.chargeMessage,
    required this.chargeType,
  });
	factory NewSongDataPrivilegeChargeInfoList.fromJson(Map<String, dynamic> json) => _$NewSongDataPrivilegeChargeInfoListFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataPrivilegeChargeInfoListToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataArtists {
  @JsonKey(defaultValue: 0)
	final int img1v1Id;
  @JsonKey(defaultValue: 0)
	final int topicPerson;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: 0)
	final int musicSize;
  @JsonKey(defaultValue: 0)
	final int albumSize;
  @JsonKey(defaultValue: '')
	final String img1v1Url;
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
	NewSongDataArtists({
    required this.img1v1Id,
    required this.topicPerson,
    required this.followed,
    required this.picId,
    required this.briefDesc,
    required this.picUrl,
    required this.musicSize,
    required this.albumSize,
    required this.img1v1Url,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.img1v1idStr,
  });
	factory NewSongDataArtists.fromJson(Map<String, dynamic> json) => _$NewSongDataArtistsFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataArtistsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataHMusic {
	@JsonKey(defaultValue: 0)
	final int volumeDelta;
	@JsonKey(defaultValue: 0)
	final int playTime;
	@JsonKey(defaultValue: 0)
	final int dfsId;
	@JsonKey(defaultValue: 0)
	final int bitrate;
	@JsonKey(defaultValue: 0)
	final int sr;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: '')
	final String extension;
	NewSongDataHMusic({
    required this.volumeDelta,
    required this.playTime,
    required this.dfsId,
    required this.bitrate,
    required this.sr,
    required this.name,
    required this.id,
    required this.size,
    required this.extension,
  });
	factory NewSongDataHMusic.fromJson(Map<String, dynamic> json) => _$NewSongDataHMusicFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataHMusicToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataMMusic {
  @JsonKey(defaultValue: 0)
	final int volumeDelta;
  @JsonKey(defaultValue: 0)
	final int playTime;
  @JsonKey(defaultValue: 0)
	final int dfsId;
  @JsonKey(defaultValue: 0)
	final int bitrate;
  @JsonKey(defaultValue: 0)
	final int sr;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: '')
	final String extension;
	NewSongDataMMusic({
    required this.volumeDelta,
    required this.playTime,
    required this.dfsId,
    required this.bitrate,
    required this.sr,
    required this.name,
    required this.id,
    required this.size,
    required this.extension,
  });
	factory NewSongDataMMusic.fromJson(Map<String, dynamic> json) => _$NewSongDataMMusicFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataMMusicToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataLMusic {
  @JsonKey(defaultValue: 0)
	final int volumeDelta;
  @JsonKey(defaultValue: 0)
	final int playTime;
  @JsonKey(defaultValue: 0)
	final int dfsId;
  @JsonKey(defaultValue: 0)
	final int bitrate;
  @JsonKey(defaultValue: 0)
	final int sr;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: '')
	final String extension;
	NewSongDataLMusic({
    required this.volumeDelta,
    required this.playTime,
    required this.dfsId,
    required this.bitrate,
    required this.sr,
    required this.name,
    required this.id,
    required this.size,
    required this.extension,
  });
	factory NewSongDataLMusic.fromJson(Map<String, dynamic> json) => _$NewSongDataLMusicFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataLMusicToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataAlbum {
  @JsonKey(defaultValue: false)
	final bool paid;
  @JsonKey(defaultValue: false)
	final bool onSale;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: [])
	final List<NewSongDataAlbumArtists> artists;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: 0)
	final int publishTime;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: '')
	final String commentThreadId;
	final NewSongDataAlbumArtist? artist;
  @JsonKey(defaultValue: 0)
	final int copyrightId;
  @JsonKey(defaultValue: '')
	final String company;
  @JsonKey(defaultValue: '')
	final String subType;
  @JsonKey(defaultValue: '')
	final String blurPicUrl;
  @JsonKey(defaultValue: 0)
	final int companyId;
  @JsonKey(defaultValue: 0)
	final int pic;
  @JsonKey(defaultValue: 0)
	final int status;
  @JsonKey(defaultValue: '')
	final String description;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
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
	NewSongDataAlbum({
    required this.paid,
    required this.onSale,
    required this.picId,
    required this.artists,
    required this.briefDesc,
    required this.publishTime,
    required this.picUrl,
    required this.commentThreadId,
    this.artist,
    required this.copyrightId,
    required this.company,
    required this.subType,
    required this.blurPicUrl,
    required this.companyId,
    required this.pic,
    required this.status,
    required this.description,
    required this.alias,
    required this.tags,
    required this.name,
    required this.id,
    required this.type,
    required this.size,
    required this.picidStr,
  });
	factory NewSongDataAlbum.fromJson(Map<String, dynamic> json) => _$NewSongDataAlbumFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataAlbumToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataAlbumArtists {
  @JsonKey(defaultValue: 0)
	final int img1v1Id;
  @JsonKey(defaultValue: 0)
	final int topicPerson;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: 0)
	final int musicSize;
  @JsonKey(defaultValue: 0)
	final int albumSize;
  @JsonKey(defaultValue: '')
	final String img1v1Url;
  @JsonKey(defaultValue: '')
	final String trans;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
	// @JSONField(name: "img1v1Id_str")
  @JsonKey(name: "img1v1Id_str", defaultValue: '')
	final String img1v1idStr;
	NewSongDataAlbumArtists({
    required this.img1v1Id,
    required this.topicPerson,
    required this.followed,
    required this.picId,
    required this.briefDesc,
    required this.picUrl,
    required this.musicSize,
    required this.albumSize,
    required this.img1v1Url,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.img1v1idStr,
  });
	factory NewSongDataAlbumArtists.fromJson(Map<String, dynamic> json) => _$NewSongDataAlbumArtistsFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataAlbumArtistsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataAlbumArtist {
	@JsonKey(defaultValue: 0)
	final int img1v1Id;
	@JsonKey(defaultValue: 0)
	final int topicPerson;
	@JsonKey(defaultValue: false)
	final bool followed;
	@JsonKey(defaultValue: 0)
	final int picId;
	@JsonKey(defaultValue: '')
	final String briefDesc;
	@JsonKey(defaultValue: '')
	final String picUrl;
	@JsonKey(defaultValue: 0)
	final int musicSize;
	@JsonKey(defaultValue: 0)
	final int albumSize;
	@JsonKey(defaultValue: '')
	final String img1v1Url;
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
	NewSongDataAlbumArtist({
    required this.img1v1Id,
    required this.topicPerson,
    required this.followed,
    required this.picId,
    required this.briefDesc,
    required this.picUrl,
    required this.musicSize,
    required this.albumSize,
    required this.img1v1Url,
    required this.trans,
    required this.alias,
    required this.name,
    required this.id,
    required this.img1v1idStr,
  });
	factory NewSongDataAlbumArtist.fromJson(Map<String, dynamic> json) => _$NewSongDataAlbumArtistFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataAlbumArtistToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class NewSongDataBMusic {
  @JsonKey(defaultValue: 0)
	final int volumeDelta;
  @JsonKey(defaultValue: 0)
	final int playTime;
  @JsonKey(defaultValue: 0)
	final int dfsId;
  @JsonKey(defaultValue: 0)
	final int bitrate;
  @JsonKey(defaultValue: 0)
	final int sr;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: '')
	final String extension;
	NewSongDataBMusic({
    required this.volumeDelta,
    required this.playTime,
    required this.dfsId,
    required this.bitrate,
    required this.sr,
    required this.name,
    required this.id,
    required this.size,
    required this.extension,
  });
	factory NewSongDataBMusic.fromJson(Map<String, dynamic> json) => _$NewSongDataBMusicFromJson(json);
	Map<String, dynamic> toJson() => _$NewSongDataBMusicToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *song_detail_entity
@JsonSerializable()
class SongDetailEntity {
  @JsonKey(defaultValue: [])
	final List<SongDetailSongs> songs;
  @JsonKey(defaultValue: [])
	final List<SongDetailPrivileges> privileges;
  @JsonKey(defaultValue: 0)
	final int code;
	SongDetailEntity({
    required this.songs,
    required this.privileges,
    required this.code,
  });
	factory SongDetailEntity.fromJson(Map<String, dynamic> json) => _$SongDetailEntityFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongs {
	@JsonKey(defaultValue: '')
	final String name;
	@JsonKey(defaultValue: 0)
	final int id;
	@JsonKey(defaultValue: 0)
	final int pst;
	@JsonKey(defaultValue: 0)
	final int t;
	@JsonKey(defaultValue: [])
	final List<SongDetailSongsAr> ar;
  @JsonKey(defaultValue: [])
	final List<dynamic> alia;
  @JsonKey(defaultValue: 0)
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
	final SongDetailSongsAl? al;
  @JsonKey(defaultValue: 0)
	final int dt;
	final SongDetailSongsH? h;
	final SongDetailSongsM? m;
	final SongDetailSongsL? l;
	final SongDetailSongsSq? sq;
	final dynamic hr; // 比sq更高的音质
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
	final dynamic awardTags;
	final dynamic displayTags;
  @JsonKey(defaultValue: 0)
	final int single;
	final dynamic noCopyrightRcmd;
  @JsonKey(defaultValue: 0)
	final int mv;
  @JsonKey(defaultValue: 0)
	final int rtype;
	final dynamic rurl;
  @JsonKey(defaultValue: 0)
	final int mst;
  @JsonKey(defaultValue: 0)
	final int cp;
  @JsonKey(defaultValue: 0)
	final int publishTime;
	SongDetailSongs({
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
    required this.al,
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
    this.awardTags,
    this.displayTags,
    required this.single,
    this.noCopyrightRcmd,
    required this.mv,
    required this.rtype,
    this.rurl,
    required this.mst,
    required this.cp,
    required this.publishTime,
  });
	factory SongDetailSongs.fromJson(Map<String, dynamic> json) => _$SongDetailSongsFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsAr {
  @JsonKey(defaultValue: 0)
	final int id; // 如果id是0,只有name展示
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: [])
	final List<dynamic> tns;
  @JsonKey(defaultValue: [])
	final List<dynamic> alias;
	SongDetailSongsAr({
    required this.id,
    required this.name,
    required this.tns,
    required this.alias,
  });
	factory SongDetailSongsAr.fromJson(Map<String, dynamic> json) => _$SongDetailSongsArFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsArToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsAl {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: '')
	final String name;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: [])
	final List<dynamic> tns;
  @JsonKey(defaultValue: 0)
	final int pic;
	SongDetailSongsAl({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.tns,
    required this.pic,
  });
	factory SongDetailSongsAl.fromJson(Map<String, dynamic> json) => _$SongDetailSongsAlFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsAlToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsH {
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
	SongDetailSongsH({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory SongDetailSongsH.fromJson(Map<String, dynamic> json) => _$SongDetailSongsHFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsHToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsM {
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
	SongDetailSongsM({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory SongDetailSongsM.fromJson(Map<String, dynamic> json) => _$SongDetailSongsMFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsMToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsL {
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
	SongDetailSongsL({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory SongDetailSongsL.fromJson(Map<String, dynamic> json) => _$SongDetailSongsLFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsLToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailSongsSq {
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
	SongDetailSongsSq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
	factory SongDetailSongsSq.fromJson(Map<String, dynamic> json) => _$SongDetailSongsSqFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailSongsSqToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivileges {
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int fee;
  @JsonKey(defaultValue: 0)
	final int payed;
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
  @JsonKey(defaultValue: false)
	final bool toast;
  @JsonKey(defaultValue: 0)
	final int flag;
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
	final SongDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
  @JsonKey(defaultValue: 0)
	final int rightSource;
  @JsonKey(defaultValue: [])
	final List<SongDetailPrivilegesChargeInfoList> chargeInfoList;
  @JsonKey(defaultValue: 0)
	final int code;
	final dynamic message;
	SongDetailPrivileges({
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
    this.rscl,
    this.freeTrialPrivilege,
    required this.rightSource,
    required this.chargeInfoList,
    required this.code,
    this.message,
  });
	factory SongDetailPrivileges.fromJson(Map<String, dynamic> json) => _$SongDetailPrivilegesFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailPrivilegesToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivilegesFreeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
  @JsonKey(defaultValue: 0)
	final int listenType;
  @JsonKey(defaultValue: 0)
	final int cannotListenReason;
	final dynamic playReason;
	final dynamic freeLimitTagType;
	SongDetailPrivilegesFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.listenType,
    required this.cannotListenReason,
    this.playReason,
    this.freeLimitTagType,
  });
	factory SongDetailPrivilegesFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$SongDetailPrivilegesFreeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailPrivilegesFreeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongDetailPrivilegesChargeInfoList {
  @JsonKey(defaultValue: 0)
	final int rate;
	final dynamic chargeUrl;
	final dynamic chargeMessage;
  @JsonKey(defaultValue: 0)
	final int chargeType;
	SongDetailPrivilegesChargeInfoList({
    required this.rate,
    this.chargeUrl,
    this.chargeMessage,
    required this.chargeType,
  });
	factory SongDetailPrivilegesChargeInfoList.fromJson(Map<String, dynamic> json) => _$SongDetailPrivilegesChargeInfoListFromJson(json);
	Map<String, dynamic> toJson() => _$SongDetailPrivilegesChargeInfoListToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *song_like_check_entity
@JsonSerializable()
class SongLikeCheckEntity {
  @JsonKey(defaultValue: [])
	final List<int> ids;
  @JsonKey(defaultValue: 0)
	final int code;
	SongLikeCheckEntity({
    required this.ids,
    required this.code,
  });
	factory SongLikeCheckEntity.fromJson(Map<String, dynamic> json) => _$SongLikeCheckEntityFromJson(json);
	Map<String, dynamic> toJson() => _$SongLikeCheckEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

// *song_quality_detail_entity
@JsonSerializable()
class SongQualityDetailEntity {
  final SongQualityDetailData? data;
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: '')
  final String message;
  @JsonKey(defaultValue: false)
  final bool success;
  @JsonKey(defaultValue: false)
  final bool error;
  SongQualityDetailEntity({
    this.data,
    required this.code,
    required this.message,
    required this.success,
    required this.error,
  });
  factory SongQualityDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailData {
  @JsonKey(defaultValue: 0)
  final int songId;
  final SongQualityDetailDataH? h;
  final SongQualityDetailDataM? m;
  final SongQualityDetailDataL? l;
  final SongQualityDetailDataSq? sq;
  final dynamic hr;
  final dynamic db;
  final SongQualityDetailDataJm? jm;
  final SongQualityDetailDataJe? je;
  final dynamic sk;
  final SongQualityDetailDataVi? vi;
  SongQualityDetailData({
    required this.songId,
    this.h,
    this.m,
    this.l,
    this.sq,
    this.hr,
    this.db,
    this.jm,
    this.je,
    this.sk,
    this.vi,
  });
  factory SongQualityDetailData.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataH {
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
  SongQualityDetailDataH({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataH.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataHFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataHToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataM {
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
  SongQualityDetailDataM({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataM.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataMFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataMToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataL {
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
  SongQualityDetailDataL({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataL.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataLFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataLToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataSq {
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
  SongQualityDetailDataSq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataSq.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataSqFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataSqToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataJm {
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
  SongQualityDetailDataJm({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataJm.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataJmFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataJmToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataJe {
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
  SongQualityDetailDataJe({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataJe.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataJeFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataJeToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongQualityDetailDataVi {
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
  SongQualityDetailDataVi({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd,
    required this.sr,
  });
  factory SongQualityDetailDataVi.fromJson(Map<String, dynamic> json) =>
      _$SongQualityDetailDataViFromJson(json);
  Map<String, dynamic> toJson() => _$SongQualityDetailDataViToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// *song_url_entity
@JsonSerializable()
class SongUrlEntity {
  @JsonKey(defaultValue: [])
	final List<SongUrlData> data;
  @JsonKey(defaultValue: 0)
	final int code;
	SongUrlEntity({
    required this.data,
    required this.code,
  });
	factory SongUrlEntity.fromJson(Map<String, dynamic> json) => _$SongUrlEntityFromJson(json);
	Map<String, dynamic> toJson() => _$SongUrlEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlData {
  @JsonKey(defaultValue: 0)
	final int id; // 歌曲ID
  @JsonKey(defaultValue: '')
	final String url; // 音频文件地址，下载时无需cookie
  @JsonKey(defaultValue: 0)
	final int br;
  @JsonKey(defaultValue: 0)
	final int size;
  @JsonKey(defaultValue: '')
	final String md5;
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: 0)
	final int expi;
  @JsonKey(defaultValue: '')
	final String type;
  @JsonKey(defaultValue: 0)
	final int gain;
  @JsonKey(defaultValue: 0)
	final int peak;
  @JsonKey(defaultValue: 0)
	final int closedGain;
  @JsonKey(defaultValue: 0)
	final int closedPeak;
  @JsonKey(defaultValue: 0)
	final int fee;
	final dynamic uf;
  @JsonKey(defaultValue: 0)
	final int payed;
  @JsonKey(defaultValue: 0)
	final int flag;
  @JsonKey(defaultValue: false)
	final bool canExtend;
  @JsonKey(defaultValue: '')
	final String level;
  @JsonKey(defaultValue: '')
	final String encodeType;
	final SongUrlDataFreeTrialPrivilege? freeTrialPrivilege;
	final SongUrlDataFreeTimeTrialPrivilege? freeTimeTrialPrivilege;
  @JsonKey(defaultValue: 0)
	final int urlSource;
  @JsonKey(defaultValue: 0)
	final int rightSource;
  @JsonKey(defaultValue: 0)
	final int time; // 歌曲时长，单位毫秒
  @JsonKey(defaultValue: '')
	final String musicId;
	SongUrlData({
    required this.id,
    required this.url,
    required this.br,
    required this.size,
    required this.md5,
    required this.code,
    required this.expi,
    required this.type,
    required this.gain,
    required this.peak,
    required this.closedGain,
    required this.closedPeak,
    required this.fee,
    this.uf,
    required this.payed,
    required this.flag,
    required this.canExtend,
    required this.level,
    required this.encodeType,
    this.freeTrialPrivilege,
    this.freeTimeTrialPrivilege,
    required this.urlSource,
    required this.rightSource,
    required this.time,
    required this.musicId,
  });
	factory SongUrlData.fromJson(Map<String, dynamic> json) => _$SongUrlDataFromJson(json);
	Map<String, dynamic> toJson() => _$SongUrlDataToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
	SongUrlDataFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
  });
	factory SongUrlDataFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$SongUrlDataFreeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$SongUrlDataFreeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class SongUrlDataFreeTimeTrialPrivilege {
  @JsonKey(defaultValue: false)
	final bool resConsumable;
  @JsonKey(defaultValue: false)
	final bool userConsumable;
  @JsonKey(defaultValue: 0)
	final int type;
  @JsonKey(defaultValue: 0)
	final int remainTime;
	SongUrlDataFreeTimeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.type,
    required this.remainTime,
  });
	factory SongUrlDataFreeTimeTrialPrivilege.fromJson(Map<String, dynamic> json) => _$SongUrlDataFreeTimeTrialPrivilegeFromJson(json);
	Map<String, dynamic> toJson() => _$SongUrlDataFreeTimeTrialPrivilegeToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

/* 歌词相关 */
@JsonSerializable()
class SongLyricEntity {
  @JsonKey(defaultValue: false)
  final bool sgc; // 可能SongGameControl，用于互动
  @JsonKey(defaultValue: false)
  final bool sfy; // 可能ShowFanYi，用于显示翻译
  @JsonKey(defaultValue: false)
  final bool qfy; // 可能QueryFanYi，用于请求翻译/待校对
  final SongLyricData? lrc; // 原歌词
  final SongLyricData? klyric; // 可能karaoke歌词
  final SongLyricData? tlyric; // 翻译歌词
  final SongLyricData? romalrc; // 罗马音歌词
  @JsonKey(defaultValue: 0)
  final int code;
  SongLyricEntity({
    required this.sgc,
    required this.sfy,
    required this.qfy,
    this.lrc,
    this.klyric,
    this.tlyric,
    this.romalrc,
    required this.code,
  });
  factory SongLyricEntity.fromJson(Map<String, dynamic> json) => _$SongLyricEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SongLyricEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class SongLyricData {
  @JsonKey(defaultValue: 0)
  final int version;
  @JsonKey(defaultValue: '')
  final String lyric;
  SongLyricData({
    required this.version,
    required this.lyric,
  });
  factory SongLyricData.fromJson(Map<String, dynamic> json) => _$SongLyricDataFromJson(json);
  Map<String, dynamic> toJson() => _$SongLyricDataToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

mixin SongApi {
  /// 新歌速递
  /// [type] 0:全部，7:华语，96:欧美，8:日本，16:韩国
  /// [total] 默认为true
  Future<NewSongEntity?> newSongs({
    int type = 0,
    bool total = true,
    int limit = 100,
  }) async {
    final data = {
      'areaId': type,
      'total': total,
    };
    // 用limit截断
    final result =  await SnowfluffMusicManager().post<NewSongEntity>(
      url: NetEaseMusicAPI.getNewSongs,
      data: data,
      fromJson: (json) => NewSongEntity.fromJson(json),
    );
    if (result != null && result.data.isNotEmpty) {
      final limitedList = result.data.take(limit).toList();
      return NewSongEntity(
        data: limitedList,
        code: result.code,
      );
    }
    return result;
  }
  /// 歌曲地址
  /// [ids] 歌曲id数组
  /// [level] 音质，standard|exhigh|lossless|hires|jyeffect|sky|jymaster
  /// [encodeType] 编码类型，默认flac
  Future<SongUrlEntity?> songUrl({
    required List<String> ids,
    String level = 'jyeffect',
    String encodeType = 'flac',
  }) async {
    final data = {
      'ids': ids,
      'level': level,
      'encodeType': encodeType,
      'immerseType': level == 'sky' ? 'c51' : null,
    };
    return await SnowfluffMusicManager().post<SongUrlEntity>(
      url: NetEaseMusicAPI.getSongUrl,
      data: data,
      fromJson: (json) => SongUrlEntity.fromJson(json),
    );
  }
  /// 歌曲详情
  /// [ids] 歌曲id数组，不能超过1000个
  Future<SongDetailEntity?> songDetail({
    required List<int> ids,
  }) async {
    if (ids.length > 1000) {
      return SongDetailEntity(
        songs: [],
        privileges: [],
        code: -1,
      );
    }
    final data = {
      "c": jsonEncode(ids.map((id) => {"id": id}).toList())
    };
    return await SnowfluffMusicManager().post<SongDetailEntity>(
      url: NetEaseMusicAPI.getSongDetail,
      data: data,
      fromJson: (json) => SongDetailEntity.fromJson(json),
    );
  }
  /// 检查歌曲是否被喜欢
  /// [ids] 歌曲id数组
  Future<SongLikeCheckEntity?> songLikeCheck({
    required List<int> ids,
  }) async {
    final data = {
      'trackIds': ids
    };
    return await SnowfluffMusicManager().post<SongLikeCheckEntity>(
      url: NetEaseMusicAPI.checkSongIsLiked,
      data: data,
      fromJson: (json) => SongLikeCheckEntity.fromJson(json),
    );
  }

  /// 歌曲歌词
  /// [id] 歌曲id
  /// [tv] -1
  /// [lv] -1
  /// [rv] -1
  /// [kv] -1
  /// _nmclfl: 1
  Future<SongLyricEntity?> songLyric({
    required int id,
    int tv = -1,
    int lv = -1,
    int rv = -1,
    int kv = -1,
    int nmclfl = 1,
  }) async {
    final data = {
      'id': id,
      'tv': tv,
      'lv': lv,
      'rv': rv,
      'kv': kv,
      '_nmclfl': nmclfl,
    };
    return await SnowfluffMusicManager().post<SongLyricEntity?>(
      url: NetEaseMusicAPI.getSongLyric,
      data: data,
      fromJson: (json) => SongLyricEntity.fromJson(json),
    );
  }
}
