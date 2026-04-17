import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'agent.dart';
import 'api.dart';

part 'top.g.dart';

// *top_artist_entity
@JsonSerializable()
class TopArtistEntity {
  @JsonKey(defaultValue: 0)
	final int code;
  @JsonKey(defaultValue: false)
	final bool more;
  @JsonKey(defaultValue: [])
	final List<TopArtistArtists> artists;
	TopArtistEntity({
    required this.code,
    required this.more,
    required this.artists,
  });
	factory TopArtistEntity.fromJson(Map<String, dynamic> json) => _$TopArtistEntityFromJson(json);
	Map<String, dynamic> toJson() => _$TopArtistEntityToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class TopArtistArtists {
  @JsonKey(defaultValue: '--')
	final String name;
  @JsonKey(defaultValue: 0)
	final int id;
  @JsonKey(defaultValue: 0)
	final int picId;
  @JsonKey(defaultValue: 0)
	final int img1v1Id;
  @JsonKey(defaultValue: '')
	final String briefDesc;
  @JsonKey(defaultValue: '')
	final String picUrl;
  @JsonKey(defaultValue: '')
	final String img1v1Url;
  @JsonKey(defaultValue: 0)
	final int albumSize;
  @JsonKey(defaultValue: [])
	final List<String> alias;
  @JsonKey(defaultValue: '')
	final String trans;
  @JsonKey(defaultValue: 0)
	final int musicSize;
  @JsonKey(defaultValue: 0)
	final int topicPerson;
  @JsonKey(defaultValue: false)
	final bool isSubed;
  @JsonKey(defaultValue: 0)
	final int accountId;
  @JsonKey(name: "picId_str", defaultValue: '')
	final String picidStr;
  @JsonKey(name: "img1v1Id_str", defaultValue: '')
	final String img1v1idStr;
	final dynamic transNames;
  @JsonKey(defaultValue: false)
	final bool followed;
  @JsonKey(defaultValue: 0)
	final int mvSize;
  @JsonKey(defaultValue: 0)
	final int fansCount;
	TopArtistArtists({
    required this.name,
    required this.id,
    required this.picId,
    required this.img1v1Id,
    required this.briefDesc,
    required this.picUrl,
    required this.img1v1Url,
    required this.albumSize,
    required this.alias,
    required this.trans,
    required this.musicSize,
    required this.topicPerson,
    required this.isSubed,
    required this.accountId,
    required this.picidStr,
    required this.img1v1idStr,
    this.transNames,
    required this.followed,
    required this.mvSize,
    required this.fansCount,
  });
	factory TopArtistArtists.fromJson(Map<String, dynamic> json) => _$TopArtistArtistsFromJson(json);
	Map<String, dynamic> toJson() => _$TopArtistArtistsToJson(this);
	@override
	String toString() {
		return jsonEncode(this);
	}
}

mixin TopApi {
  /// 热门歌手
  /// [limit] 10
  /// [offset] 0
  /// [total] true
  Future<TopArtistEntity?> topArtist({
    int limit = 10,
    int offset = 0,
    bool total = true,
  }) async {
    final data = {
      'limit': limit,
      'offset': offset,
      'total': total,
    };
    return await SnowfluffMusicManager().post<TopArtistEntity>(
      url: NetEaseMusicAPI.getTopArtist,
      options: createOption(),
      data: data,
      fromJson: (json) => TopArtistEntity.fromJson(json),
    );
  }
}
