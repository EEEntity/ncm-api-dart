import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'agent.dart';
import 'api.dart';

part 'search.g.dart';

enum SearchType {
  song(1),      // 单曲
  album(10),    // 专辑
  artist(100),  // 歌手
  playlist(1000); // 歌单

  const SearchType(this.value);
  final int value;
}

@JsonSerializable(genericArgumentFactories: true)
class SearchResultEntity<T> {
  final T? result;

  @JsonKey(defaultValue: 0)
  final int code;

  SearchResultEntity({
    this.result,
    required this.code,
  });

  factory SearchResultEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SearchResultEntityFromJson(json, fromJsonT);

  Map<String, dynamic> toJson([Object? Function(T value)? toJsonT]) =>
      _$SearchResultEntityToJson(this, toJsonT ?? (value) => value);

  @override
  String toString() => jsonEncode(toJson());
}

// 单曲
@JsonSerializable()
class SearchSongResult {
  @JsonKey(name: 'songs', defaultValue: [])
  final List<SearchResultEntitySong> songs;

  @JsonKey(defaultValue: 0)
  final int songCount;

  SearchSongResult({
    required this.songs,
    required this.songCount,
  });

  factory SearchSongResult.fromJson(Map<String, dynamic> json) =>
      _$SearchSongResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSongResultToJson(this);

  @override
  String toString() => jsonEncode(this);
}

@JsonSerializable()
class SearchResultEntitySong {
  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: [])
  final List<SearchResultEntitySongArtist> artists;

  SearchResultEntitySong({
    required this.id,
    required this.name,
    required this.artists,
  });

  factory SearchResultEntitySong.fromJson(Map<String, dynamic> json) =>
      _$SearchResultEntitySongFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultEntitySongToJson(this);

  @override
  String toString() => jsonEncode(this);
}

@JsonSerializable()
class SearchResultEntitySongArtist {
  @JsonKey(defaultValue: '')
  final String name;

  SearchResultEntitySongArtist({
    required this.name,
  });

  factory SearchResultEntitySongArtist.fromJson(Map<String, dynamic> json) =>
      _$SearchResultEntitySongArtistFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultEntitySongArtistToJson(this);

  @override
  String toString() => jsonEncode(this);
}

// 专辑
@JsonSerializable()
class SearchAlbumResult {
  @JsonKey(name: 'albums', defaultValue: [])
  final List<SearchResultEntityAlbum> albums;

  @JsonKey(defaultValue: 0)
  final int albumCount;

  SearchAlbumResult({
    required this.albums,
    required this.albumCount,
  });

  factory SearchAlbumResult.fromJson(Map<String, dynamic> json) =>
      _$SearchAlbumResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchAlbumResultToJson(this);

  @override
  String toString() => jsonEncode(this);
}

@JsonSerializable()
class SearchResultEntityAlbum {
  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: 0)
  final int size;

  @JsonKey(defaultValue: '')
  final String picUrl;

  @JsonKey(defaultValue: 0)
  final int publishTime;

  SearchResultEntityAlbum({
    required this.id,
    required this.name,
    required this.size,
    required this.picUrl,
    required this.publishTime,
  });

  factory SearchResultEntityAlbum.fromJson(Map<String, dynamic> json) =>
      _$SearchResultEntityAlbumFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultEntityAlbumToJson(this);

  @override
  String toString() => jsonEncode(this);
}

// 歌手
@JsonSerializable()
class SearchArtistResult {
  @JsonKey(name: 'artists', defaultValue: [])
  final List<SearchResultEntityArtist> artists;

  @JsonKey(defaultValue: 0)
  final int artistCount;

  SearchArtistResult({
    required this.artists,
    required this.artistCount,
  });

  factory SearchArtistResult.fromJson(Map<String, dynamic> json) =>
      _$SearchArtistResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchArtistResultToJson(this);

  @override
  String toString() => jsonEncode(this);
}

@JsonSerializable()
class SearchResultEntityArtist {
  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: 0)
  final int albumSize;

  @JsonKey(defaultValue: 0)
  final int musicSize;

  @JsonKey(defaultValue: '')
  final String picUrl;

  SearchResultEntityArtist({
    required this.id,
    required this.name,
    required this.albumSize,
    required this.musicSize,
    required this.picUrl,
  });

  factory SearchResultEntityArtist.fromJson(Map<String, dynamic> json) =>
      _$SearchResultEntityArtistFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultEntityArtistToJson(this);

  @override
  String toString() => jsonEncode(this);
}

// 歌单
@JsonSerializable()
class SearchPlaylistResult {
  @JsonKey(name: 'playlists', defaultValue: [])
  final List<SearchResultEntityPlaylist> playlists;

  @JsonKey(defaultValue: 0)
  final int playlistCount;

  SearchPlaylistResult({
    required this.playlists,
    required this.playlistCount,
  });

  factory SearchPlaylistResult.fromJson(Map<String, dynamic> json) =>
      _$SearchPlaylistResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPlaylistResultToJson(this);

  @override
  String toString() => jsonEncode(this);
}

@JsonSerializable()
class SearchResultEntityPlaylist {
  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: '')
  final String name;

  @JsonKey(defaultValue: '')
  final String coverImgUrl;

  @JsonKey(defaultValue: 0)
  final int trackCount;

  SearchResultEntityPlaylist({
    required this.id,
    required this.name,
    required this.coverImgUrl,
    required this.trackCount,
  });

  factory SearchResultEntityPlaylist.fromJson(Map<String, dynamic> json) =>
      _$SearchResultEntityPlaylistFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultEntityPlaylistToJson(this);

  @override
  String toString() => jsonEncode(this);
}

mixin SearchApi {
  Future<SearchResultEntity<T>?> search<T>({
    required String keywords,
    int limit = 30,
    int offset = 0,
    int type = 1, // 1单曲，10专辑，100歌手，1000歌单
    T Function(Object? json)? fromJsonT,
  }) async {
    final parser = fromJsonT ?? (json) => _defaultResultParser<T>(type, json);

    final data = {
      's': keywords,
      'type': type,
      'limit': limit,
      'offset': offset,
    };

    return SnowfluffMusicManager().post<SearchResultEntity<T>>(
      url: NetEaseMusicAPI.search,
      data: data,
      options: createOption(),
      fromJson: (json) => SearchResultEntity<T>.fromJson(json, parser),
    );
  }

  // 便捷方法：单曲
  Future<SearchResultEntity<SearchSongResult>?> searchSong({
    required String keywords,
    int limit = 30,
    int offset = 0,
  }) {
    return search<SearchSongResult>(
      keywords: keywords,
      limit: limit,
      offset: offset,
      type: SearchType.song.value,
      fromJsonT: (json) => SearchSongResult.fromJson(_asJsonMap(json)),
    );
  }

  // 便捷方法：专辑
  Future<SearchResultEntity<SearchAlbumResult>?> searchAlbum({
    required String keywords,
    int limit = 30,
    int offset = 0,
  }) {
    return search<SearchAlbumResult>(
      keywords: keywords,
      limit: limit,
      offset: offset,
      type: SearchType.album.value,
      fromJsonT: (json) => SearchAlbumResult.fromJson(_asJsonMap(json)),
    );
  }

  // 便捷方法：歌手
  Future<SearchResultEntity<SearchArtistResult>?> searchArtist({
    required String keywords,
    int limit = 30,
    int offset = 0,
  }) {
    return search<SearchArtistResult>(
      keywords: keywords,
      limit: limit,
      offset: offset,
      type: SearchType.artist.value,
      fromJsonT: (json) => SearchArtistResult.fromJson(_asJsonMap(json)),
    );
  }

  // 便捷方法：歌单
  Future<SearchResultEntity<SearchPlaylistResult>?> searchPlaylist({
    required String keywords,
    int limit = 30,
    int offset = 0,
  }) {
    return search<SearchPlaylistResult>(
      keywords: keywords,
      limit: limit,
      offset: offset,
      type: SearchType.playlist.value,
      fromJsonT: (json) => SearchPlaylistResult.fromJson(_asJsonMap(json)),
    );
  }

  T _defaultResultParser<T>(int type, Object? json) {
    final map = _asJsonMap(json);
    switch (type) {
      case 1:
        return SearchSongResult.fromJson(map) as T;
      case 10:
        return SearchAlbumResult.fromJson(map) as T;
      case 100:
        return SearchArtistResult.fromJson(map) as T;
      case 1000:
        return SearchPlaylistResult.fromJson(map) as T;
      default:
        throw UnsupportedError('Unsupported search type: $type');
    }
  }
}

Map<String, dynamic> _asJsonMap(Object? json) {
  if (json is Map<String, dynamic>) return json;
  if (json is Map) return json.cast<String, dynamic>();
  return <String, dynamic>{};
}
