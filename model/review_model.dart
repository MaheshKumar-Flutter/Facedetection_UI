class ReviewModel {
  List<Reviews>? reviews;
  List<Rating>? rating;
  List<RatingPercentage>? ratingPercentage;

  ReviewModel({this.reviews, this.rating, this.ratingPercentage});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    if (json['Reviews'] != null) {
      reviews = <Reviews>[];
      json['Reviews'].forEach((v) {
        reviews!.add(new Reviews.fromJson(v));
      });
    }
    if (json['Rating'] != null) {
      rating = <Rating>[];
      json['Rating'].forEach((v) {
        rating!.add(new Rating.fromJson(v));
      });
    }
    if (json['RatingPercentage'] != null) {
      ratingPercentage = <RatingPercentage>[];
      json['RatingPercentage'].forEach((v) {
        ratingPercentage!.add(new RatingPercentage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.reviews != null) {
      data['Reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    if (this.rating != null) {
      data['Rating'] = this.rating!.map((v) => v.toJson()).toList();
    }
    if (this.ratingPercentage != null) {
      data['RatingPercentage'] =
          this.ratingPercentage!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reviews {
  String? date;
  String? name;
  String? city;
  String? title;
  String? comments;
  String? rating;
  String? videourl;

  Reviews(
      {this.date,
        this.name,
        this.city,
        this.title,
        this.comments,
        this.rating,
        this.videourl});

  Reviews.fromJson(Map<String, dynamic> json) {
    date = json['Date'];
    name = json['Name'];
    city = json['City'];
    title = json['Title'];
    comments = json['Comments'];
    rating = json['Rating'];
    videourl = json['Videourl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Date'] = this.date;
    data['Name'] = this.name;
    data['City'] = this.city;
    data['Title'] = this.title;
    data['Comments'] = this.comments;
    data['Rating'] = this.rating;
    data['Videourl'] = this.videourl;
    return data;
  }
}

class Rating {
  String? rating;
  String? reviewCount;

  Rating({this.rating, this.reviewCount});

  Rating.fromJson(Map<String, dynamic> json) {
    rating = json['Rating'];
    reviewCount = json['ReviewCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Rating'] = this.rating;
    data['ReviewCount'] = this.reviewCount;
    return data;
  }
}

class RatingPercentage {
  String? rating;
  String? count;
  String? percentage;

  RatingPercentage({this.rating, this.count, this.percentage});

  RatingPercentage.fromJson(Map<String, dynamic> json) {
    rating = json['Rating'];
    count = json['Count'];
    percentage = json['Percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Rating'] = this.rating;
    data['Count'] = this.count;
    data['Percentage'] = this.percentage;
    return data;
  }
}