// 网易云音乐接口

class NetEaseMusicAPI {
  // *用户部分
  // 登录状态
  // 手机号登录
  static const String loginWithPhone = '/api/w/login/cellphone';
  // 邮箱登录，已经废弃
  // 发送短信验证码
  static const String sendSmsCode = '/api/sms/captcha/sent';
  // 验证短信验证码
  static const String verifySmsCode = '/api/sms/captcha/verify';
  // 获取用户信息
  static const String getUserInfo = '/api/nuser/account/get';
  // 生成二维码key
  static const String generateQrCodeKey = '/api/login/qrcode/unikey';
  // 检测二维码
  static const String checkQrCode = '/api/login/qrcode/client/login';
  // 退出登录
  static const String logout = '/api/logout';
  // 登录状态
  static const String getLoginStatus = '/eapi/w/nuser/account/get';

  // *专辑与歌单
  // 最新专辑
  static const String newAlbum = '/api/album/new';
  // 获取用户歌单
  static const String getUserPlaylist = '/api/user/playlist';
  // 获取用户喜欢列表
  static const String getUserLikeList = '/api/song/like/get';
  // 专辑内容
  static const String getAlbumInfoV1 = '/api/v1/album';
  static const String getAlbumInfo = '/api/album';
  // 歌单分类
  static const String getPlaylistCatalogue = '/api/playlist/catalogue';
  // 歌单详情
  static const String getPlaylistDetail = '/api/v6/playlist/detail';
  // 歌单动态详情
  static const String getPlaylistDetailDynamic = '/api/playlist/detail/dynamic';
  // 创建歌单
  static const String createPlaylist = '/api/playlist/create';
  // 删除歌单
  static const String removePlaylist = '/api/playlist/remove';
  // 更新歌单描述
  static const String updatePlaylistDesc = '/api/playlist/desc/update';
  // 精品歌单tags
  static const String getHighQualityTags = '/api/playlist/highquality/tags';

  // *歌曲
  // 歌曲地址
  static const String getSongUrl = '/api/song/enhance/player/url/v1';
  // 歌曲详情，好像可以只用下面的getSongDetailWithQuality
  static const String getSongDetail = '/api/v3/song/detail';
  // 检查歌曲是否已标喜欢
  static const String checkSongIsLiked = '/api/song/like/check';
  // 歌曲详情含音质
  static const String getSongDetailWithQuality = '/api/song/music/detail/get';
  // 歌曲被喜欢数量
  static const String getSongLikedCount = '/api/song/red/count';
  // 歌曲歌词
  static const String getSongLyric = '/eapi/song/lyric';

  // *推荐
  // 每日推荐歌曲
  static const String getRecommendSongs = '/api/v3/discovery/recommend/songs';
  // 每日推荐歌单
  static const String getRecommendResource = '/api/v1/discovery/recommend/resource';
  // 新歌速递
  static const String getNewSongs = '/api/v1/discovery/new/songs';
  // 热门歌手
  static const String getTopArtist = '/api/artist/top';
  // 私人FM
  static const String getPersonalFM = '/weapi/v1/radio/get';
  // 私人FM垃圾桶
  static const String personalFMTrash = '/api/radio/trash/add';

  // *歌手
  // 歌手专辑
  static const String getArtistAlbums = '/api/artist/albums';
  // 歌手简介/描述
  static const String getArtistDescription = '/api/artist/introduction';
  // 歌手热门歌曲
  static const String getArtistTopSongs = '/api/artist/top/song';

  // *搜索
  // 直接搜索
  static const String search = '/api/search/get';
}
