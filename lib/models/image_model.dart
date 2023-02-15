class ImgurImages {
  List<Data>? _data;
  bool? _success;
  int? _status;

  ImgurImages({List<Data>? data, bool? success, int? status}) {
    if (data != null) {
      _data = data;
    }
    if (success != null) {
      _success = success;
    }
    if (status != null) {
      _status = status;
    }
  }

  List<Data>? get data => _data;
  set data(List<Data>? data) => _data = data;
  bool? get success => _success;
  set success(bool? success) => _success = success;
  int? get status => _status;
  set status(int? status) => _status = status;

  ImgurImages.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(Data.fromJson(v));
      });
    }
    _success = json['success'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_data != null) {
      data['data'] = _data!.map((v) => v.toJson()).toList();
    }
    data['success'] = _success;
    data['status'] = _status;
    return data;
  }
}

class Data {
  String? _id;
  String? _title;
  String? _description;
  int? _datetime;
  String? _cover;
  int? _coverWidth;
  int? _coverHeight;
  String? _accountUrl;
  int? _accountId;
  String? _privacy;
  String? _layout;
  int? _views;
  String? _link;
  int? _ups;
  int? _downs;
  int? _points;
  int? _score;
  bool? _isAlbum;

  bool? _favorite;
  bool? _nsfw;
  String? _section;
  int? _commentCount;
  int? _favoriteCount;
  String? _topic;
  int? _topicId;
  int? _imagesCount;
  bool? _inGallery;
  bool? _isAd;
  int? _adType;
  bool? _inMostViral;
  bool? _includeAlbumAds;
  List<Images>? _images;

  Data(
      {String? id,
      String? title,
      String? description,
      int? datetime,
      String? cover,
      int? coverWidth,
      int? coverHeight,
      String? accountUrl,
      int? accountId,
      String? privacy,
      String? layout,
      int? views,
      String? link,
      int? ups,
      int? downs,
      int? points,
      int? score,
      bool? isAlbum,
      bool? favorite,
      bool? nsfw,
      String? section,
      int? commentCount,
      int? favoriteCount,
      String? topic,
      int? topicId,
      int? imagesCount,
      bool? inGallery,
      bool? isAd,
      int? adType,
      bool? inMostViral,
      bool? includeAlbumAds,
      List<Images>? images}) {
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (description != null) {
      _description = description;
    }
    if (datetime != null) {
      _datetime = datetime;
    }
    if (cover != null) {
      _cover = cover;
    }
    if (coverWidth != null) {
      _coverWidth = coverWidth;
    }
    if (coverHeight != null) {
      _coverHeight = coverHeight;
    }
    if (accountUrl != null) {
      _accountUrl = accountUrl;
    }
    if (accountId != null) {
      _accountId = accountId;
    }
    if (privacy != null) {
      _privacy = privacy;
    }
    if (layout != null) {
      _layout = layout;
    }
    if (views != null) {
      _views = views;
    }
    if (link != null) {
      _link = link;
    }
    if (ups != null) {
      _ups = ups;
    }
    if (downs != null) {
      _downs = downs;
    }
    if (points != null) {
      _points = points;
    }
    if (score != null) {
      _score = score;
    }

    if (isAlbum != null) {
      _isAlbum = isAlbum;
    }

    if (favorite != null) {
      _favorite = favorite;
    }
    if (nsfw != null) {
      _nsfw = nsfw;
    }
    if (section != null) {
      _section = section;
    }
    if (commentCount != null) {
      _commentCount = commentCount;
    }
    if (favoriteCount != null) {
      _favoriteCount = favoriteCount;
    }
    if (topic != null) {
      _topic = topic;
    }
    if (topicId != null) {
      _topicId = topicId;
    }
    if (imagesCount != null) {
      _imagesCount = imagesCount;
    }
    if (inGallery != null) {
      _inGallery = inGallery;
    }
    if (isAd != null) {
      _isAd = isAd;
    }
    if (adType != null) {
      _adType = adType;
    }
    if (inMostViral != null) {
      _inMostViral = inMostViral;
    }
    if (includeAlbumAds != null) {
      _includeAlbumAds = includeAlbumAds;
    }
    if (images != null) {
      _images = images;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  int? get datetime => _datetime;
  set datetime(int? datetime) => _datetime = datetime;
  String? get cover => _cover;
  set cover(String? cover) => _cover = cover;
  int? get coverWidth => _coverWidth;
  set coverWidth(int? coverWidth) => _coverWidth = coverWidth;
  int? get coverHeight => _coverHeight;
  set coverHeight(int? coverHeight) => _coverHeight = coverHeight;
  String? get accountUrl => _accountUrl;
  set accountUrl(String? accountUrl) => _accountUrl = accountUrl;
  int? get accountId => _accountId;
  set accountId(int? accountId) => _accountId = accountId;
  String? get privacy => _privacy;
  set privacy(String? privacy) => _privacy = privacy;
  String? get layout => _layout;
  set layout(String? layout) => _layout = layout;
  int? get views => _views;
  set views(int? views) => _views = views;
  String? get link => _link;
  set link(String? link) => _link = link;
  int? get ups => _ups;
  set ups(int? ups) => _ups = ups;
  int? get downs => _downs;
  set downs(int? downs) => _downs = downs;
  int? get points => _points;
  set points(int? points) => _points = points;
  int? get score => _score;
  set score(int? score) => _score = score;
  bool? get isAlbum => _isAlbum;
  set isAlbum(bool? isAlbum) => _isAlbum = isAlbum;

  bool? get favorite => _favorite;
  set favorite(bool? favorite) => _favorite = favorite;
  bool? get nsfw => _nsfw;
  set nsfw(bool? nsfw) => _nsfw = nsfw;
  String? get section => _section;
  set section(String? section) => _section = section;
  int? get commentCount => _commentCount;
  set commentCount(int? commentCount) => _commentCount = commentCount;
  int? get favoriteCount => _favoriteCount;
  set favoriteCount(int? favoriteCount) => _favoriteCount = favoriteCount;
  String? get topic => _topic;
  set topic(String? topic) => _topic = topic;
  int? get topicId => _topicId;
  set topicId(int? topicId) => _topicId = topicId;
  int? get imagesCount => _imagesCount;
  set imagesCount(int? imagesCount) => _imagesCount = imagesCount;
  bool? get inGallery => _inGallery;
  set inGallery(bool? inGallery) => _inGallery = inGallery;
  bool? get isAd => _isAd;
  set isAd(bool? isAd) => _isAd = isAd;
  int? get adType => _adType;
  set adType(int? adType) => _adType = adType;
  bool? get inMostViral => _inMostViral;
  set inMostViral(bool? inMostViral) => _inMostViral = inMostViral;
  bool? get includeAlbumAds => _includeAlbumAds;
  set includeAlbumAds(bool? includeAlbumAds) =>
      _includeAlbumAds = includeAlbumAds;
  List<Images>? get images => _images;
  set images(List<Images>? images) => _images = images;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _datetime = json['datetime'];
    _cover = json['cover'];
    _coverWidth = json['cover_width'];
    _coverHeight = json['cover_height'];
    _accountUrl = json['account_url'];
    _accountId = json['account_id'];
    _privacy = json['privacy'];
    _layout = json['layout'];
    _views = json['views'];
    _link = json['link'];
    _ups = json['ups'];
    _downs = json['downs'];
    _points = json['points'];
    _score = json['score'];
    _isAlbum = json['is_album'];

    _favorite = json['favorite'];
    _nsfw = json['nsfw'];
    _section = json['section'];
    _commentCount = json['comment_count'];
    _favoriteCount = json['favorite_count'];
    _topic = json['topic'];
    _topicId = json['topic_id'];
    _imagesCount = json['images_count'];
    _inGallery = json['in_gallery'];
    _isAd = json['is_ad'];
    _adType = json['ad_type'];
    _inMostViral = json['in_most_viral'];
    _includeAlbumAds = json['include_album_ads'];
    if (json['images'] != null) {
      _images = <Images>[];
      json['images'].forEach((v) {
        _images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['title'] = _title;
    data['description'] = _description;
    data['datetime'] = _datetime;
    data['cover'] = _cover;
    data['cover_width'] = _coverWidth;
    data['cover_height'] = _coverHeight;
    data['account_url'] = _accountUrl;
    data['account_id'] = _accountId;
    data['privacy'] = _privacy;
    data['layout'] = _layout;
    data['views'] = _views;
    data['link'] = _link;
    data['ups'] = _ups;
    data['downs'] = _downs;
    data['points'] = _points;
    data['score'] = _score;
    data['is_album'] = _isAlbum;

    data['favorite'] = _favorite;
    data['nsfw'] = _nsfw;
    data['section'] = _section;
    data['comment_count'] = _commentCount;
    data['favorite_count'] = _favoriteCount;
    data['topic'] = _topic;
    data['topic_id'] = _topicId;
    data['images_count'] = _imagesCount;
    data['in_gallery'] = _inGallery;
    data['is_ad'] = _isAd;
    data['ad_type'] = _adType;
    data['in_most_viral'] = _inMostViral;
    data['include_album_ads'] = _includeAlbumAds;
    if (_images != null) {
      data['images'] = _images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  String? _id;
  String? _title;
  String? _description;
  int? _datetime;
  String? _type;
  bool? _animated;
  int? _width;
  int? _height;
  int? _size;
  int? _views;
  int? _bandwidth;
  bool? _favorite;
  bool? _isAd;
  bool? _inMostViral;
  bool? _hasSound;
  int? _adType;
  String? _edited;
  bool? _inGallery;
  String? _link;

  Images(
      {String? id,
      String? title,
      String? description,
      int? datetime,
      String? type,
      bool? animated,
      int? width,
      int? height,
      int? size,
      int? views,
      int? bandwidth,
      bool? favorite,
      bool? isAd,
      bool? inMostViral,
      bool? hasSound,
      int? adType,
      String? edited,
      bool? inGallery,
      String? link}) {
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (description != null) {
      _description = description;
    }
    if (datetime != null) {
      _datetime = datetime;
    }
    if (type != null) {
      _type = type;
    }
    if (animated != null) {
      _animated = animated;
    }
    if (width != null) {
      _width = width;
    }
    if (height != null) {
      _height = height;
    }
    if (size != null) {
      _size = size;
    }
    if (views != null) {
      _views = views;
    }
    if (bandwidth != null) {
      _bandwidth = bandwidth;
    }
    if (favorite != null) {
      _favorite = favorite;
    }
    if (isAd != null) {
      _isAd = isAd;
    }
    if (inMostViral != null) {
      _inMostViral = inMostViral;
    }
    if (hasSound != null) {
      _hasSound = hasSound;
    }
    if (adType != null) {
      _adType = adType;
    }
    if (edited != null) {
      _edited = edited;
    }
    if (inGallery != null) {
      _inGallery = inGallery;
    }
    if (link != null) {
      _link = link;
    }
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get description => _description;
  set description(String? description) => _description = description;
  int? get datetime => _datetime;
  set datetime(int? datetime) => _datetime = datetime;
  String? get type => _type;
  set type(String? type) => _type = type;
  bool? get animated => _animated;
  set animated(bool? animated) => _animated = animated;
  int? get width => _width;
  set width(int? width) => _width = width;
  int? get height => _height;
  set height(int? height) => _height = height;
  int? get size => _size;
  set size(int? size) => _size = size;
  int? get views => _views;
  set views(int? views) => _views = views;
  int? get bandwidth => _bandwidth;
  set bandwidth(int? bandwidth) => _bandwidth = bandwidth;
  bool? get favorite => _favorite;
  set favorite(bool? favorite) => _favorite = favorite;
  bool? get isAd => _isAd;
  set isAd(bool? isAd) => _isAd = isAd;
  bool? get inMostViral => _inMostViral;
  set inMostViral(bool? inMostViral) => _inMostViral = inMostViral;
  bool? get hasSound => _hasSound;
  set hasSound(bool? hasSound) => _hasSound = hasSound;
  int? get adType => _adType;
  set adType(int? adType) => _adType = adType;
  String? get edited => _edited;
  set edited(String? edited) => _edited = edited;
  bool? get inGallery => _inGallery;
  set inGallery(bool? inGallery) => _inGallery = inGallery;
  String? get link => _link;
  set link(String? link) => _link = link;

  Images.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _datetime = json['datetime'];
    _type = json['type'];
    _animated = json['animated'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _views = json['views'];
    _bandwidth = json['bandwidth'];
    _favorite = json['favorite'];
    _isAd = json['is_ad'];
    _inMostViral = json['in_most_viral'];
    _hasSound = json['has_sound'];
    _adType = json['ad_type'];
    _edited = json['edited'];
    _inGallery = json['in_gallery'];
    _link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['title'] = _title;
    data['description'] = _description;
    data['datetime'] = _datetime;
    data['type'] = _type;
    data['animated'] = _animated;
    data['width'] = _width;
    data['height'] = _height;
    data['size'] = _size;
    data['views'] = _views;
    data['bandwidth'] = _bandwidth;
    data['favorite'] = _favorite;
    data['is_ad'] = _isAd;
    data['in_most_viral'] = _inMostViral;
    data['has_sound'] = _hasSound;
    data['ad_type'] = _adType;
    data['edited'] = _edited;
    data['in_gallery'] = _inGallery;
    data['link'] = _link;
    return data;
  }
}
