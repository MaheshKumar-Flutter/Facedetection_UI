class HomeModel {
  List<BannerModel>? banner;
  List<Category>? cetgory;
  List<BestSelling>? bestSelling;
  List<OurProductMaster>? ourProductMaster;
  List<OurProductDetail>? ourProduct;
  List<OurBrands>? ourBrands;
  List<Videos>? videos;
  MRest? mRest;

  HomeModel(
      {this.banner,
      this.cetgory,
      this.bestSelling,
      this.ourProductMaster,
      this.ourProduct,
      this.ourBrands,
      this.videos,
      this.mRest});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      banner = <BannerModel>[];
      json['m_Item1'].forEach((v) {
        banner!.add(BannerModel.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      cetgory = <Category>[];
      json['m_Item2'].forEach((v) {
        cetgory!.add(Category.fromJson(v));
      });
    }
    if (json['m_Item3'] != null) {
      bestSelling = <BestSelling>[];
      json['m_Item3'].forEach((v) {
        bestSelling!.add(BestSelling.fromJson(v));
      });
    }
    if (json['m_Item4'] != null) {
      ourProductMaster = <OurProductMaster>[];
      json['m_Item4'].forEach((v) {
        ourProductMaster!.add(OurProductMaster.fromJson(v));
      });
    }
    if (json['m_Item5'] != null) {
      ourProduct = <OurProductDetail>[];
      json['m_Item5'].forEach((v) {
        ourProduct!.add(OurProductDetail.fromJson(v));
      });
    }
    if (json['m_Item6'] != null) {
      ourBrands = <OurBrands>[];
      json['m_Item6'].forEach((v) {
        ourBrands!.add(OurBrands.fromJson(v));
      });
    }
    if (json['m_Item7'] != null) {
      videos = <Videos>[];
      json['m_Item7'].forEach((v) {
        videos!.add(Videos.fromJson(v));
      });
    }
    mRest = json['m_Rest'] != null ? MRest.fromJson(json['m_Rest']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (banner != null) {
      data['m_Item1'] = banner!.map((v) => v.toJson()).toList();
    }
    if (cetgory != null) {
      data['m_Item2'] = cetgory!.map((v) => v.toJson()).toList();
    }
    if (bestSelling != null) {
      data['m_Item3'] = bestSelling!.map((v) => v.toJson()).toList();
    }
    if (ourProductMaster != null) {
      data['m_Item4'] = ourProduct!.map((v) => v.toJson()).toList();
    }
    if (ourProduct != null) {
      data['m_Item5'] = ourProduct!.map((v) => v.toJson()).toList();
    }
    if (ourBrands != null) {
      data['m_Item6'] = ourBrands!.map((v) => v.toJson()).toList();
    }
    if (videos != null) {
      data['m_Item7'] = videos!.map((v) => v.toJson()).toList();
    }
    if (mRest != null) {
      data['m_Rest'] = mRest!.toJson();
    }
    return data;
  }
}

class BannerModel {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  BannerModel(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  BannerModel.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class Category {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  Category(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  Category.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class BestSelling {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  BestSelling(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  BestSelling.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class OurBrands {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  OurBrands(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  OurBrands.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class Videos {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  Videos(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  Videos.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class OurProductMaster {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  OurProductMaster(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  OurProductMaster.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class OurProductDetail {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  OurProductDetail(
      {this.bDId,
        this.name,
        this.mainImage,
        this.textImage,
        this.bGImage,
        this.link,
        this.newWindow});

  OurProductDetail.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}


class Certificate {
  String? bDId;
  String? name;
  String? mainImage;
  String? textImage;
  String? bGImage;
  String? link;
  String? newWindow;

  Certificate(
      {this.bDId,
      this.name,
      this.mainImage,
      this.textImage,
      this.bGImage,
      this.link,
      this.newWindow});

  Certificate.fromJson(Map<String, dynamic> json) {
    bDId = json['BDId'];
    name = json['Name'];
    mainImage = json['MainImage'];
    textImage = json['TextImage'];
    bGImage = json['BGImage'];
    link = json['Link'];
    newWindow = json['NewWindow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['BDId'] = bDId;
    data['Name'] = name;
    data['MainImage'] = mainImage;
    data['TextImage'] = textImage;
    data['BGImage'] = bGImage;
    data['Link'] = link;
    data['NewWindow'] = newWindow;
    return data;
  }
}

class MRest {
  List<Certificate>? mItem1;

  MRest({this.mItem1});

  MRest.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <Certificate>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(Certificate.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (mItem1 != null) {
      data['m_Item1'] = mItem1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
