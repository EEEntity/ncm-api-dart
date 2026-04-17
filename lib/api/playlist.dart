import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'package:ncm_api/api/agent.dart';
import 'package:ncm_api/api/api.dart';
import 'user.dart';

part 'playlist.g.dart';

// *catalogue_entity
@JsonSerializable()
class CatalogueEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  CatalogueAll? all;
  @JsonKey(defaultValue: [])
  final List<CatalogueSub> sub;
  Map<String, dynamic>? categories;
  CatalogueEntity({
    required this.code,
    this.all,
    required this.sub,
    this.categories,
  });
  factory CatalogueEntity.fromJson(Map<String, dynamic> json) =>
      _$CatalogueEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogueEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CatalogueAll {
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int resourceCount;
  @JsonKey(defaultValue: 0)
  final int imgId;
  final dynamic imgUrl;
  @JsonKey(defaultValue: 0)
  final int type;
  @JsonKey(defaultValue: 0)
  final int category;
  @JsonKey(defaultValue: 0)
  final int resourceType;
  @JsonKey(defaultValue: false)
  final bool hot;
  @JsonKey(defaultValue: false)
  final bool activity;
  CatalogueAll({
    required this.name,
    required this.resourceCount,
    required this.imgId,
    this.imgUrl,
    required this.type,
    required this.category,
    required this.resourceType,
    required this.hot,
    required this.activity,
  });
  factory CatalogueAll.fromJson(Map<String, dynamic> json) =>
      _$CatalogueAllFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogueAllToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CatalogueSub {
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int resourceCount;
  @JsonKey(defaultValue: 0)
  final int imgId;
  final dynamic imgUrl;
  @JsonKey(defaultValue: 0)
  final int type;
  @JsonKey(defaultValue: 0)
  final int category;
  @JsonKey(defaultValue: 0)
  final int resourceType;
  @JsonKey(defaultValue: false)
  final bool hot;
  @JsonKey(defaultValue: false)
  final bool activity;
  CatalogueSub({
    required this.name,
    required this.resourceCount,
    required this.imgId,
    this.imgUrl,
    required this.type,
    required this.category,
    required this.resourceType,
    required this.hot,
    required this.activity,
  });
  factory CatalogueSub.fromJson(Map<String, dynamic> json) =>
      _$CatalogueSubFromJson(json);
  Map<String, dynamic> toJson() => _$CatalogueSubToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// *create_playlist_entity
@JsonSerializable()
class CreatePlaylistEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  CreatePlaylistPlaylist? playlist;
  @JsonKey(defaultValue: 0)
  final int id;
  CreatePlaylistEntity({required this.code, this.playlist, required this.id});
  factory CreatePlaylistEntity.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePlaylistEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class CreatePlaylistPlaylist {
  @JsonKey(defaultValue: [])
  final List<dynamic> subscribers;
  final dynamic subscribed;
  final dynamic creator;
  final dynamic artists;
  final dynamic tracks;
  @JsonKey(defaultValue: false)
  final bool top;
  final dynamic updateFrequency;
  @JsonKey(defaultValue: 0)
  final int backgroundCoverId;
  final dynamic backgroundCoverUrl;
  @JsonKey(defaultValue: 0)
  final int titleImage;
  final dynamic titleImageUrl;
  final dynamic englishTitle;
  @JsonKey(defaultValue: false)
  final bool opRecommend;
  final dynamic recommendInfo;
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
  final dynamic description;
  @JsonKey(defaultValue: [])
  final List<dynamic> tags;
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
  final dynamic sharedUsers;
  final dynamic shareStatus;
  @JsonKey(defaultValue: false)
  final bool copied;
  @JsonKey(defaultValue: false)
  final bool containsTracks;
  CreatePlaylistPlaylist({
    required this.subscribers,
    this.subscribed,
    this.creator,
    this.artists,
    this.tracks,
    required this.top,
    this.updateFrequency,
    required this.backgroundCoverId,
    this.backgroundCoverUrl,
    required this.titleImage,
    this.titleImageUrl,
    this.englishTitle,
    required this.opRecommend,
    this.recommendInfo,
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
    this.description,
    required this.tags,
    required this.ordered,
    required this.status,
    required this.name,
    required this.id,
    required this.coverimgidStr,
    this.sharedUsers,
    this.shareStatus,
    required this.copied,
    required this.containsTracks,
  });
  factory CreatePlaylistPlaylist.fromJson(Map<String, dynamic> json) =>
      _$CreatePlaylistPlaylistFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePlaylistPlaylistToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// *high_quality_tags_entity
@JsonSerializable()
class HighQualityTagsEntity {
  @JsonKey(defaultValue: [])
  final List<HighQualityTagsTags> tags;
  @JsonKey(defaultValue: 0)
  final int code;
  HighQualityTagsEntity({required this.tags, required this.code});
  factory HighQualityTagsEntity.fromJson(Map<String, dynamic> json) =>
      _$HighQualityTagsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$HighQualityTagsEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class HighQualityTagsTags {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int type;
  @JsonKey(defaultValue: 0)
  final int category;
  @JsonKey(defaultValue: false)
  final bool hot;
  HighQualityTagsTags({
    required this.id,
    required this.name,
    required this.type,
    required this.category,
    required this.hot,
  });
  factory HighQualityTagsTags.fromJson(Map<String, dynamic> json) =>
      _$HighQualityTagsTagsFromJson(json);
  Map<String, dynamic> toJson() => _$HighQualityTagsTagsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

// *playlist_detail_entity
@JsonSerializable()
class PlaylistDetailEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  final dynamic relatedVideos;
  final PlaylistDetailPlaylist? playlist;
  final dynamic urls;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPrivileges> privileges;
  final dynamic sharedPrivilege;
  final dynamic resEntrance;
  final dynamic fromUsers;
  @JsonKey(defaultValue: 0)
  final int fromUserCount;
  final dynamic songFromUsers;
  PlaylistDetailEntity({
    required this.code,
    this.relatedVideos,
    this.playlist,
    this.urls,
    required this.privileges,
    this.sharedPrivilege,
    this.resEntrance,
    this.fromUsers,
    required this.fromUserCount,
    this.songFromUsers,
  });
  factory PlaylistDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylist {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int coverImgId;
  @JsonKey(defaultValue: '')
  final String coverImgUrl;
  @JsonKey(name: "coverImgId_str", defaultValue: '')
  final String coverimgidStr;
  @JsonKey(defaultValue: 0)
  final int adType;
  @JsonKey(defaultValue: 0)
  final int userId;
  @JsonKey(defaultValue: 0)
  final int createTime;
  @JsonKey(defaultValue: 0)
  final int status;
  @JsonKey(defaultValue: false)
  final bool opRecommend;
  @JsonKey(defaultValue: false)
  final bool highQuality;
  @JsonKey(defaultValue: false)
  final bool newImported;
  @JsonKey(defaultValue: 0)
  final int updateTime;
  @JsonKey(defaultValue: 0)
  final int trackCount;
  @JsonKey(defaultValue: 0)
  final int specialType;
  @JsonKey(defaultValue: 0)
  final int privacy;
  @JsonKey(defaultValue: 0)
  final int trackUpdateTime;
  @JsonKey(defaultValue: '')
  final String commentThreadId;
  @JsonKey(defaultValue: 0)
  final int playCount;
  @JsonKey(defaultValue: 0)
  final int trackNumberUpdateTime;
  @JsonKey(defaultValue: 0)
  final int subscribedCount;
  @JsonKey(defaultValue: 0)
  final int cloudTrackCount;
  @JsonKey(defaultValue: false)
  final bool ordered;
  @JsonKey(defaultValue: '')
  final String description;
  @JsonKey(defaultValue: [])
  final List<dynamic> tags;
  @JsonKey(defaultValue: '')
  final String updateFrequency;
  @JsonKey(defaultValue: 0)
  final int backgroundCoverId;
  @JsonKey(defaultValue: '')
  final String backgroundCoverUrl;
  @JsonKey(defaultValue: 0)
  final int titleImage;
  @JsonKey(defaultValue: '')
  final String titleImageUrl;
  @JsonKey(defaultValue: '')
  final String detailPageTitle;
  @JsonKey(defaultValue: '')
  final String englishTitle;
  @JsonKey(defaultValue: '')
  final String officialPlaylistType;
  @JsonKey(defaultValue: false)
  final bool copied;
  @JsonKey(defaultValue: '')
  final String relateResType;
  @JsonKey(defaultValue: 0)
  final int coverStatus;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPlaylistSubscribers> subscribers;
  @JsonKey(defaultValue: false)
  final bool subscribed;
  final PlaylistDetailPlaylistCreator? creator;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPlaylistTracks> tracks;
  final dynamic videoIds;
  final dynamic videos;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPlaylistTrackIds> trackIds;
  final dynamic bannedTrackIds;
  final dynamic mvResourceInfos;
  @JsonKey(defaultValue: 0)
  final int shareCount;
  @JsonKey(defaultValue: 0)
  final int commentCount;
  final dynamic remixVideo;
  final dynamic newDetailPageRemixVideo;
  final dynamic sharedUsers;
  final dynamic historySharedUsers;
  @JsonKey(defaultValue: '')
  final String gradeStatus;
  final dynamic score;
  final dynamic algTags;
  @JsonKey(defaultValue: [])
  final List<dynamic> distributeTags;
  @JsonKey(defaultValue: 0)
  final int trialMode;
  final dynamic displayTags;
  @JsonKey(defaultValue: false)
  final bool displayUserInfoAsTagOnly;
  @JsonKey(defaultValue: '')
  final String playlistType;
  final PlaylistDetailPlaylistBizExtInfo? bizExtInfo;

  PlaylistDetailPlaylist({
    required this.id,
    required this.name,
    required this.coverImgId,
    required this.coverImgUrl,
    required this.coverimgidStr,
    required this.adType,
    required this.userId,
    required this.createTime,
    required this.status,
    required this.opRecommend,
    required this.highQuality,
    required this.newImported,
    required this.updateTime,
    required this.trackCount,
    required this.specialType,
    required this.privacy,
    required this.trackUpdateTime,
    required this.commentThreadId,
    required this.playCount,
    required this.trackNumberUpdateTime,
    required this.subscribedCount,
    required this.cloudTrackCount,
    required this.ordered,
    required this.description,
    required this.tags,
    required this.updateFrequency,
    required this.backgroundCoverId,
    required this.backgroundCoverUrl,
    required this.titleImage,
    required this.titleImageUrl,
    required this.detailPageTitle,
    required this.englishTitle,
    required this.officialPlaylistType,
    required this.copied,
    required this.relateResType,
    required this.coverStatus,
    required this.subscribers,
    required this.subscribed,
    required this.creator,
    required this.tracks,
    this.videoIds,
    this.videos,
    required this.trackIds,
    this.bannedTrackIds,
    this.mvResourceInfos,
    required this.shareCount,
    required this.commentCount,
    this.remixVideo,
    this.newDetailPageRemixVideo,
    this.sharedUsers,
    this.historySharedUsers,
    required this.gradeStatus,
    this.score,
    this.algTags,
    required this.distributeTags,
    required this.trialMode,
    this.displayTags,
    required this.displayUserInfoAsTagOnly,
    required this.playlistType,
    required this.bizExtInfo,
  });
  factory PlaylistDetailPlaylist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistSubscribers {
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
  final dynamic expertTags;
  final dynamic experts;
  @JsonKey(defaultValue: 0)
  final int djStatus;
  @JsonKey(defaultValue: 0)
  final int vipType;
  final dynamic remarkName;
  @JsonKey(defaultValue: 0)
  final int authenticationTypes;
  final dynamic avatarDetail;
  @JsonKey(defaultValue: '')
  final String avatarImgIdStr;
  @JsonKey(defaultValue: '')
  final String backgroundImgIdStr;
  @JsonKey(defaultValue: false)
  final bool anchor;
  @JsonKey(name: "avatarImgId_str", defaultValue: '')
  final String avatarimgidStr;
  PlaylistDetailPlaylistSubscribers({
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
    this.expertTags,
    this.experts,
    required this.djStatus,
    required this.vipType,
    this.remarkName,
    required this.authenticationTypes,
    this.avatarDetail,
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
    required this.anchor,
    required this.avatarimgidStr,
  });
  factory PlaylistDetailPlaylistSubscribers.fromJson(
    Map<String, dynamic> json,
  ) => _$PlaylistDetailPlaylistSubscribersFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PlaylistDetailPlaylistSubscribersToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistCreator {
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
  final dynamic expertTags;
  final dynamic experts;
  @JsonKey(defaultValue: 0)
  final int djStatus;
  @JsonKey(defaultValue: 0)
  final int vipType;
  final dynamic remarkName;
  @JsonKey(defaultValue: 0)
  final int authenticationTypes;
  final PlaylistDetailPlaylistCreatorAvatarDetail? avatarDetail;
  @JsonKey(defaultValue: '')
  final String avatarImgIdStr;
  @JsonKey(defaultValue: '')
  final String backgroundImgIdStr;
  @JsonKey(defaultValue: false)
  final bool anchor;
  @JsonKey(name: "avatarImgId_str", defaultValue: '')
  final String avatarimgidStr;
  PlaylistDetailPlaylistCreator({
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
    this.expertTags,
    this.experts,
    required this.djStatus,
    required this.vipType,
    this.remarkName,
    required this.authenticationTypes,
    this.avatarDetail,
    required this.avatarImgIdStr,
    required this.backgroundImgIdStr,
    required this.anchor,
    required this.avatarimgidStr,
  });
  factory PlaylistDetailPlaylistCreator.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistCreatorFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistCreatorToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistCreatorAvatarDetail {
  @JsonKey(defaultValue: 0)
  final int userType;
  @JsonKey(defaultValue: 0)
  final int identityLevel;
  @JsonKey(defaultValue: '')
  final String identityIconUrl;
  PlaylistDetailPlaylistCreatorAvatarDetail({
    required this.userType,
    required this.identityLevel,
    required this.identityIconUrl,
  });
  factory PlaylistDetailPlaylistCreatorAvatarDetail.fromJson(
    Map<String, dynamic> json,
  ) => _$PlaylistDetailPlaylistCreatorAvatarDetailFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PlaylistDetailPlaylistCreatorAvatarDetailToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracks {
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: 0)
  final int pst;
  @JsonKey(defaultValue: 0)
  final int t;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPlaylistTracksAr> ar;
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
  final PlaylistDetailPlaylistTracksAl? al;
  @JsonKey(defaultValue: 0)
  final int dt;
  final PlaylistDetailPlaylistTracksH? h;
  final PlaylistDetailPlaylistTracksM? m;
  final PlaylistDetailPlaylistTracksL? l;
  final PlaylistDetailPlaylistTracksSq? sq;
  final PlaylistDetailPlaylistTracksHr? hr;
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
  @JsonKey(defaultValue: 0)
  final int single;
  final dynamic noCopyrightRcmd;
  @JsonKey(defaultValue: '')
  final String alg;
  final dynamic displayReason;
  @JsonKey(defaultValue: 0)
  final int rtype;
  final dynamic rurl;
  @JsonKey(defaultValue: 0)
  final int mst;
  @JsonKey(defaultValue: 0)
  final int cp;
  @JsonKey(defaultValue: 0)
  final int mv;
  @JsonKey(defaultValue: 0)
  final int publishTime;
  @JsonKey(defaultValue: [])
  final List<String> tns;
  PlaylistDetailPlaylistTracks({
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
    this.awardTags,
    required this.single,
    this.noCopyrightRcmd,
    required this.alg,
    this.displayReason,
    required this.rtype,
    this.rurl,
    required this.mst,
    required this.cp,
    required this.mv,
    required this.publishTime,
    required this.tns
  });
  factory PlaylistDetailPlaylistTracks.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksAr {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: [])
  final List<dynamic> tns;
  @JsonKey(defaultValue: [])
  final List<dynamic> alias;
  PlaylistDetailPlaylistTracksAr({
    required this.id,
    required this.name,
    required this.tns,
    required this.alias
  });
  factory PlaylistDetailPlaylistTracksAr.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksArFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksArToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksAl {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(defaultValue: '')
  final String picUrl;
  @JsonKey(defaultValue: [])
  final List<dynamic> tns;
  @JsonKey(name: "pic_str", defaultValue: '')
  final String picStr;
  @JsonKey(defaultValue: 0)
  final int pic;
  PlaylistDetailPlaylistTracksAl({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.tns,
    required this.picStr,
    required this.pic
  });
  factory PlaylistDetailPlaylistTracksAl.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksAlFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksAlToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksH {
  @JsonKey(defaultValue: 0)
  final int br;
  @JsonKey(defaultValue: 0)
  final int fid;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(defaultValue: 0.0)
  final double? vd;
  PlaylistDetailPlaylistTracksH({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd
  });
  factory PlaylistDetailPlaylistTracksH.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksHFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksHToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksM {
  @JsonKey(defaultValue: 0)
  final int br;
  @JsonKey(defaultValue: 0)
  final int fid;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(defaultValue: 0.0)
  final double? vd;
  PlaylistDetailPlaylistTracksM({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd
  });
  factory PlaylistDetailPlaylistTracksM.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksMFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksMToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksL {
  @JsonKey(defaultValue: 0)
  final int br;
  @JsonKey(defaultValue: 0)
  final int fid;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(defaultValue: 0.0)
  final double vd;
  PlaylistDetailPlaylistTracksL({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd
  });
  factory PlaylistDetailPlaylistTracksL.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksLFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksLToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksSq {
  @JsonKey(defaultValue: 0)
  final int br;
  @JsonKey(defaultValue: 0)
  final int fid;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(defaultValue: 0.0)
  final double? vd;
  PlaylistDetailPlaylistTracksSq({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd
  });
  factory PlaylistDetailPlaylistTracksSq.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksSqFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksSqToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTracksHr {
  @JsonKey(defaultValue: 0)
  final int br;
  @JsonKey(defaultValue: 0)
  final int fid;
  @JsonKey(defaultValue: 0)
  final int size;
  @JsonKey(defaultValue: 0.0)
  final double? vd;
  PlaylistDetailPlaylistTracksHr({
    required this.br,
    required this.fid,
    required this.size,
    required this.vd
  });
  factory PlaylistDetailPlaylistTracksHr.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTracksHrFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTracksHrToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistTrackIds {
  @JsonKey(defaultValue: 0)
  final int id;
  @JsonKey(defaultValue: 0)
  final int v;
  @JsonKey(defaultValue: 0)
  final int t;
  @JsonKey(defaultValue: 0)
  final int at;
  @JsonKey(defaultValue: '')
  final String alg;
  @JsonKey(defaultValue: 0)
  final int uid;
  @JsonKey(defaultValue: '')
  final String rcmdReason;
  @JsonKey(defaultValue: '')
  final String rcmdReasonTitle;
  final dynamic sc;
  final dynamic f;
  final dynamic sr;
  final dynamic dpr;

  PlaylistDetailPlaylistTrackIds({
    required this.id,
    required this.v,
    required this.t,
    required this.at,
    required this.alg,
    required this.uid,
    required this.rcmdReason,
    required this.rcmdReasonTitle,
    this.sc,
    this.f,
    this.sr,
    this.dpr
  });
  factory PlaylistDetailPlaylistTrackIds.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPlaylistTrackIdsFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPlaylistTrackIdsToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPlaylistBizExtInfo {
  PlaylistDetailPlaylistBizExtInfo();
  factory PlaylistDetailPlaylistBizExtInfo.fromJson(
    Map<String, dynamic> json,
  ) => _$PlaylistDetailPlaylistBizExtInfoFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PlaylistDetailPlaylistBizExtInfoToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivileges {
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
  final PlaylistDetailPrivilegesFreeTrialPrivilege? freeTrialPrivilege;
  @JsonKey(defaultValue: 0)
  final int rightSource;
  @JsonKey(defaultValue: [])
  final List<PlaylistDetailPrivilegesChargeInfoList> chargeInfoList;
  @JsonKey(defaultValue: 0)
  final int code;
  final dynamic message;
  final dynamic plLevels;
  final dynamic dlLevels;
  PlaylistDetailPrivileges({
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
    this.message,
    this.plLevels,
    this.dlLevels
  });
  factory PlaylistDetailPrivileges.fromJson(Map<String, dynamic> json) =>
      _$PlaylistDetailPrivilegesFromJson(json);
  Map<String, dynamic> toJson() => _$PlaylistDetailPrivilegesToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivilegesFreeTrialPrivilege {
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
  PlaylistDetailPrivilegesFreeTrialPrivilege({
    required this.resConsumable,
    required this.userConsumable,
    required this.listenType,
    required this.cannotListenReason,
    this.playReason,
    this.freeLimitTagType
  });
  factory PlaylistDetailPrivilegesFreeTrialPrivilege.fromJson(
    Map<String, dynamic> json,
  ) => _$PlaylistDetailPrivilegesFreeTrialPrivilegeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PlaylistDetailPrivilegesFreeTrialPrivilegeToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlaylistDetailPrivilegesChargeInfoList {
  @JsonKey(defaultValue: 0)
  final int rate;
  final dynamic chargeUrl;
  final dynamic chargeMessage;
  @JsonKey(defaultValue: 0)
  final int chargeType;
  PlaylistDetailPrivilegesChargeInfoList({
    required this.rate,
    this.chargeUrl,
    this.chargeMessage,
    required this.chargeType
  });
  factory PlaylistDetailPrivilegesChargeInfoList.fromJson(
    Map<String, dynamic> json,
  ) => _$PlaylistDetailPrivilegesChargeInfoListFromJson(json);
  Map<String, dynamic> toJson() =>
      _$PlaylistDetailPrivilegesChargeInfoListToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

mixin PlaylistApi {
  /// 歌单分类
  Future<CatalogueEntity?> playlistCatalogue() async {
    return await SnowfluffMusicManager().post<CatalogueEntity>(
      url: NetEaseMusicAPI.getPlaylistCatalogue,
      fromJson: (json) => CatalogueEntity.fromJson(json),
    );
  }
  /// 创建歌单
  /// [name] 歌单名称
  /// [privacy] 是否私密歌单，0普通1隐私
  /// [type] 歌单类型，可选NORMAL|VIDEO|SHARED
  Future<CreatePlaylistEntity?> createPlaylist({
    required String name,
    required int privacy,
    String type = 'NORMAL',
  }) async {
    final data = {
      'name': name,
      'privacy': privacy,
      'type': type,
    };
    return await SnowfluffMusicManager().post<CreatePlaylistEntity>(
      url: NetEaseMusicAPI.createPlaylist,
      data: data,
      fromJson: (json) => CreatePlaylistEntity.fromJson(json),
    );
  }
  /// 删除歌单
  /// [ids] 歌单id
  Future<StringEntity?> removePlaylist({
    required List<String> ids,
  }) async {
    return await SnowfluffMusicManager().post<StringEntity>(
      url: NetEaseMusicAPI.removePlaylist,
      data: {'ids': ids},
      fromJson: (json) => StringEntity.fromJson(json),
    );
  }
  /// 更新歌单描述
  /// [id] 歌单id
  Future<StringEntity?> updatePlaylistDesc({
    required int id,
    required String desc,
  }) async {
    return await SnowfluffMusicManager().post<StringEntity>(
      url: NetEaseMusicAPI.updatePlaylistDesc,
      data: {'id': id, 'desc': desc},
      fromJson: (json) => StringEntity.fromJson(json),
    );
  }
  /// 歌单详情
  /// [id] 歌单id
  /// [n] 可能是数量，offset==0，可选
  /// [s] 可能是最近的s个收藏者，可选
  /// [dynamic] 是否用动态接口，可选
  Future<PlaylistDetailEntity?> playlistDetail({
    required int id,
    int n = 1000,
    int s = 8,
    bool dynamic = false,
  }) async {
    final data = {
      'id': id,
      'n': n,
      's': s,
      // 'dynamic': dynamic,
    };
    return await SnowfluffMusicManager().post<PlaylistDetailEntity>(
      url: dynamic ? NetEaseMusicAPI.getPlaylistDetailDynamic : NetEaseMusicAPI.getPlaylistDetail,
      data: data,
      fromJson: (json) => PlaylistDetailEntity.fromJson(json),
    );
  }
}
