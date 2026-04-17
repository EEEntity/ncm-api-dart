import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'agent.dart';
import 'api.dart';

part 'artist.g.dart';

@JsonSerializable()
class ArtistDescriptionEntity {
  @JsonKey(defaultValue: '')
  final String briefDesc; // 艺人简介
  @JsonKey(defaultValue: 0)
  final int code;
  ArtistDescriptionEntity({
    required this.briefDesc,
    required this.code,
  });
  factory ArtistDescriptionEntity.fromJson(Map<String, dynamic> json) => _$ArtistDescriptionEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistDescriptionEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }}

@JsonSerializable()
class ArtistTopSongsEntity {
  @JsonKey(defaultValue: 0)
  final int code;
  @JsonKey(defaultValue: [])
  final List<ArtistTopSongSong> songs;
  ArtistTopSongsEntity({
    required this.code,
    required this.songs,
  });
  factory ArtistTopSongsEntity.fromJson(Map<String, dynamic> json) => _$ArtistTopSongsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistTopSongsEntityToJson(this);
}

@JsonSerializable()
class ArtistTopSongSong {
  // @JsonKey(defaultValue: '')
  // final String name; // 歌曲名称
  @JsonKey(defaultValue: 0)
  final int id; // 歌曲ID
  // 这里只获取歌曲ID，其它信息通过歌曲详情接口获取
  ArtistTopSongSong({
    required this.id,
  });
  factory ArtistTopSongSong.fromJson(Map<String, dynamic> json) => _$ArtistTopSongSongFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistTopSongSongToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistAlbumsEntity {
  // 只获取专辑ID列表，专辑详情通过专辑内容接口获取
  // 但很奇怪，歌手图片在这个接口下
  @JsonKey(defaultValue: 0)
  final int code;
  ArtistAlbumsArtist? artist; // 这里拿歌手图片
  @JsonKey(defaultValue: [])
  final List<ArtistAlbumsAlbum> hotAlbums;
  ArtistAlbumsEntity({
    required this.code,
    required this.hotAlbums,
  });
  factory ArtistAlbumsEntity.fromJson(Map<String, dynamic> json) => _$ArtistAlbumsEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistAlbumsEntityToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }  
}

@JsonSerializable()
class ArtistAlbumsArtist {
  @JsonKey(defaultValue: '')
  final String name; // 歌手名称
  @JsonKey(defaultValue: '')
  final String picUrl; // 歌手图片
  // img1v1Url是歌手页的头像
  // 这里的briefDesc是空的，歌手简介在歌手详情接口下
  @JsonKey(defaultValue: 0)
  final int musicSize; // 歌曲数量
  @JsonKey(defaultValue: 0)
  final int albumSize; // 专辑数量
  ArtistAlbumsArtist({
    required this.name,
    required this.picUrl,
    required this.musicSize,
    required this.albumSize,
  });
  factory ArtistAlbumsArtist.fromJson(Map<String, dynamic> json) => _$ArtistAlbumsArtistFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistAlbumsArtistToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ArtistAlbumsAlbum {
  @JsonKey(defaultValue: 0)
  final int id; // 专辑ID
  @JsonKey(defaultValue: '')
  final String name; // 专辑名称(用于卡片标题)
  @JsonKey(defaultValue: '')
  final String picUrl; // 专辑图片(用于卡片封面)
  @JsonKey(defaultValue: 0)
  final int publishTime; // 专辑发布时间(用于卡片副标题)
  ArtistAlbumsAlbum({
    required this.id,
    required this.name,
    required this.picUrl,
    required this.publishTime,

  });
  factory ArtistAlbumsAlbum.fromJson(Map<String, dynamic> json) => _$ArtistAlbumsAlbumFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistAlbumsAlbumToJson(this);
  @override
  String toString() {
    return jsonEncode(this);
  }
}

mixin ArtistApi {
  /// 歌手详情
  /// 获取歌手简介
  /// [id] 歌手ID
  Future<ArtistDescriptionEntity?> artistDetail({
    required int id,
  }) async {
    return await SnowfluffMusicManager().post<ArtistDescriptionEntity>(
      url: NetEaseMusicAPI.getArtistDescription,
      options: createOption(
        encryptType: EncryptType.weApi,
      ),
      data: {'id': id},
      fromJson: ArtistDescriptionEntity.fromJson,
    );
  }
  /// 歌手热门歌曲
  /// 获取歌手top50歌曲id列表
  /// [id] 歌手ID
  Future<ArtistTopSongsEntity?> artistTopSongs({
    required int id,
  }) async {
    return await SnowfluffMusicManager().post<ArtistTopSongsEntity>(
      url: NetEaseMusicAPI.getArtistTopSongs,
      options: createOption(
        encryptType: EncryptType.weApi,
      ),
      data: {'id': id},
      fromJson: ArtistTopSongsEntity.fromJson,
    );
  }
  /// 歌手专辑
  /// 获取歌手专辑id列表和歌手图片
  /// [id] 歌手ID
  Future<ArtistAlbumsEntity?> artistAlbums({
    required int id,
    int limit = 20, // 专辑数量
    int offset = 0, // 偏移值
    bool total = false, // 全部专辑/专辑总数？
  }) async {
    return await SnowfluffMusicManager().post<ArtistAlbumsEntity>(
      url: '${NetEaseMusicAPI.getArtistAlbums}/$id',
      data: {
        'limit': limit,
        'offset': offset,
        'total': total,
      },
      options: createOption(
        encryptType: EncryptType.weApi,
      ),
      fromJson: ArtistAlbumsEntity.fromJson,
    );
  }
}
