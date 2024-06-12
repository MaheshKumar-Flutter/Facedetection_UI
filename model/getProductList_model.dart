class GetProductListModel {
  List<TopProducts>? topProducts;
  List<RecentlyViewedProducts>? recentlyViewedProducts;
  List<OnandOnProduct>? onandOnProduct;
  List<ElementProduct>? elementProduct;
  List<RecentVideos>? recentVideos;

  GetProductListModel(
      {this.topProducts,
      this.recentlyViewedProducts,
      this.onandOnProduct,
      this.elementProduct,
      this.recentVideos});

  GetProductListModel.fromJson(Map<String, dynamic> json) {
    if (json['TopProducts'] != null) {
      topProducts = <TopProducts>[];
      json['TopProducts'].forEach((v) {
        topProducts!.add(TopProducts.fromJson(v));
      });
    }
    if (json['RecentlyViewedProducts'] != null) {
      recentlyViewedProducts = <RecentlyViewedProducts>[];
      json['RecentlyViewedProducts'].forEach((v) {
        recentlyViewedProducts!.add(RecentlyViewedProducts.fromJson(v));
      });
    }
    if (json['OnandOnProduct'] != null) {
      onandOnProduct = <OnandOnProduct>[];
      json['OnandOnProduct'].forEach((v) {
        onandOnProduct!.add(OnandOnProduct.fromJson(v));
      });
    }
    if (json['ElementProduct'] != null) {
      elementProduct = <ElementProduct>[];
      json['ElementProduct'].forEach((v) {
        elementProduct!.add(ElementProduct.fromJson(v));
      });
    }
    if (json['RecentVideos'] != null) {
      recentVideos = <RecentVideos>[];
      json['RecentVideos'].forEach((v) {
        recentVideos!.add(RecentVideos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (topProducts != null) {
      data['TopProducts'] = topProducts!.map((v) => v.toJson()).toList();
    }
    if (recentlyViewedProducts != null) {
      data['RecentlyViewedProducts'] =
          recentlyViewedProducts!.map((v) => v.toJson()).toList();
    }
    if (onandOnProduct != null) {
      data['OnandOnProduct'] = onandOnProduct!.map((v) => v.toJson()).toList();
    }
    if (elementProduct != null) {
      data['ElementProduct'] = elementProduct!.map((v) => v.toJson()).toList();
    }
    if (recentVideos != null) {
      data['RecentVideos'] = recentVideos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TopProducts {
  int? rNo;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  String? sEOName;
  String? image;
  bool? stockCheck;
  int? stockQty;
  int? stock;
  bool? sLRFlg;
  int? aPOfferTyp;
  double? aPOfferPrice;
  int? aPOfferPer;
  double? actualPrice;
  double? actualSOPrice;
  int? cPOfferTyp;
  double? cPOfferPrice;
  int? cPOfferPer;
  double? couponPrice;
  double? couponSOPrice;
  double? selingPrice;
  double? priceDiff;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? cTGId;
  int? pDTNew;
  int? isCode;
  bool? priceShow;
  String? link;
  bool? delFlag;
  int? category;
  int? parentCategory;
  String? uRL;
  double? rating;
  String? description;

  TopProducts(
      {this.rNo,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.sEOName,
      this.image,
      this.stockCheck,
      this.stockQty,
      this.stock,
      this.sLRFlg,
      this.aPOfferTyp,
      this.aPOfferPrice,
      this.aPOfferPer,
      this.actualPrice,
      this.actualSOPrice,
      this.cPOfferTyp,
      this.cPOfferPrice,
      this.cPOfferPer,
      this.couponPrice,
      this.couponSOPrice,
      this.selingPrice,
      this.priceDiff,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.cTGId,
      this.pDTNew,
      this.isCode,
      this.priceShow,
      this.link,
      this.delFlag,
      this.category,
      this.parentCategory,
      this.uRL,
      this.rating,
      this.description});

  TopProducts.fromJson(Map<String, dynamic> json) {
    rNo = json['RNo'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    sEOName = json['SEOName'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualPrice = json['ActualPrice'];
    actualSOPrice = json['ActualSOPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponPrice = json['CouponPrice'];
    couponSOPrice = json['CouponSOPrice'];
    selingPrice = json['SelingPrice'];
    priceDiff = json['PriceDiff'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    cTGId = json['CTGId'];
    pDTNew = json['PDTNew'];
    isCode = json['IsCode'];
    priceShow = json['PriceShow'];
    link = json['Link'];
    delFlag = json['DelFlag'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    uRL = json['URL'];
    rating = json['Rating'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RNo'] = rNo;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['SEOName'] = sEOName;
    data['Image'] = image;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['Stock'] = stock;
    data['SLRFlg'] = sLRFlg;
    data['APOfferTyp'] = aPOfferTyp;
    data['APOfferPrice'] = aPOfferPrice;
    data['APOfferPer'] = aPOfferPer;
    data['ActualPrice'] = actualPrice;
    data['ActualSOPrice'] = actualSOPrice;
    data['CPOfferTyp'] = cPOfferTyp;
    data['CPOfferPrice'] = cPOfferPrice;
    data['CPOfferPer'] = cPOfferPer;
    data['CouponPrice'] = couponPrice;
    data['CouponSOPrice'] = couponSOPrice;
    data['SelingPrice'] = selingPrice;
    data['PriceDiff'] = priceDiff;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['CTGId'] = cTGId;
    data['PDTNew'] = pDTNew;
    data['IsCode'] = isCode;
    data['PriceShow'] = priceShow;
    data['Link'] = link;
    data['DelFlag'] = delFlag;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['URL'] = uRL;
    data['Rating'] = rating;
    data['Description'] = description;
    return data;
  }
}

class RecentlyViewedProducts {
  int? rNo;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  String? sEOName;
  String? image;
  bool? stockCheck;
  int? stockQty;
  int? stock;
  bool? sLRFlg;
  int? aPOfferTyp;
  double? aPOfferPrice;
  int? aPOfferPer;
  double? actualPrice;
  double? actualSOPrice;
  int? cPOfferTyp;
  double? cPOfferPrice;
  int? cPOfferPer;
  double? couponPrice;
  double? couponSOPrice;
  double? selingPrice;
  double? priceDiff;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? cTGId;
  int? pDTNew;
  int? isCode;
  bool? priceShow;
  String? link;
  bool? delFlag;
  int? category;
  int? parentCategory;
  String? uRL;
  double? rating;
  String? description;

  RecentlyViewedProducts(
      {this.rNo,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.sEOName,
      this.image,
      this.stockCheck,
      this.stockQty,
      this.stock,
      this.sLRFlg,
      this.aPOfferTyp,
      this.aPOfferPrice,
      this.aPOfferPer,
      this.actualPrice,
      this.actualSOPrice,
      this.cPOfferTyp,
      this.cPOfferPrice,
      this.cPOfferPer,
      this.couponPrice,
      this.couponSOPrice,
      this.selingPrice,
      this.priceDiff,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.cTGId,
      this.pDTNew,
      this.isCode,
      this.priceShow,
      this.link,
      this.delFlag,
      this.category,
      this.parentCategory,
      this.uRL,
      this.rating,
      this.description});

  RecentlyViewedProducts.fromJson(Map<String, dynamic> json) {
    rNo = json['RNo'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    sEOName = json['SEOName'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualPrice = json['ActualPrice'];
    actualSOPrice = json['ActualSOPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponPrice = json['CouponPrice'];
    couponSOPrice = json['CouponSOPrice'];
    selingPrice = json['SelingPrice'];
    priceDiff = json['PriceDiff'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    cTGId = json['CTGId'];
    pDTNew = json['PDTNew'];
    isCode = json['IsCode'];
    priceShow = json['PriceShow'];
    link = json['Link'];
    delFlag = json['DelFlag'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    uRL = json['URL'];
    rating = json['Rating'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RNo'] = rNo;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['SEOName'] = sEOName;
    data['Image'] = image;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['Stock'] = stock;
    data['SLRFlg'] = sLRFlg;
    data['APOfferTyp'] = aPOfferTyp;
    data['APOfferPrice'] = aPOfferPrice;
    data['APOfferPer'] = aPOfferPer;
    data['ActualPrice'] = actualPrice;
    data['ActualSOPrice'] = actualSOPrice;
    data['CPOfferTyp'] = cPOfferTyp;
    data['CPOfferPrice'] = cPOfferPrice;
    data['CPOfferPer'] = cPOfferPer;
    data['CouponPrice'] = couponPrice;
    data['CouponSOPrice'] = couponSOPrice;
    data['SelingPrice'] = selingPrice;
    data['PriceDiff'] = priceDiff;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['CTGId'] = cTGId;
    data['PDTNew'] = pDTNew;
    data['IsCode'] = isCode;
    data['PriceShow'] = priceShow;
    data['Link'] = link;
    data['DelFlag'] = delFlag;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['URL'] = uRL;
    data['Rating'] = rating;
    data['Description'] = description;
    return data;
  }
}

class RecentVideos {
  int? rNo;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  String? sEOName;
  String? image;
  bool? stockCheck;
  int? stockQty;
  int? stock;
  bool? sLRFlg;
  int? aPOfferTyp;
  double? aPOfferPrice;
  int? aPOfferPer;
  double? actualPrice;
  double? actualSOPrice;
  int? cPOfferTyp;
  double? cPOfferPrice;
  int? cPOfferPer;
  double? couponPrice;
  double? couponSOPrice;
  double? selingPrice;
  double? priceDiff;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? cTGId;
  int? pDTNew;
  int? isCode;
  bool? priceShow;
  String? link;
  bool? delFlag;
  int? category;
  int? parentCategory;
  String? uRL;
  double? rating;
  String? description;

  RecentVideos(
      {this.rNo,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.sEOName,
      this.image,
      this.stockCheck,
      this.stockQty,
      this.stock,
      this.sLRFlg,
      this.aPOfferTyp,
      this.aPOfferPrice,
      this.aPOfferPer,
      this.actualPrice,
      this.actualSOPrice,
      this.cPOfferTyp,
      this.cPOfferPrice,
      this.cPOfferPer,
      this.couponPrice,
      this.couponSOPrice,
      this.selingPrice,
      this.priceDiff,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.cTGId,
      this.pDTNew,
      this.isCode,
      this.priceShow,
      this.link,
      this.delFlag,
      this.category,
      this.parentCategory,
      this.uRL,
      this.rating,
      this.description});

  RecentVideos.fromJson(Map<String, dynamic> json) {
    rNo = json['RNo'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    sEOName = json['SEOName'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualPrice = json['ActualPrice'];
    actualSOPrice = json['ActualSOPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponPrice = json['CouponPrice'];
    couponSOPrice = json['CouponSOPrice'];
    selingPrice = json['SelingPrice'];
    priceDiff = json['PriceDiff'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    cTGId = json['CTGId'];
    pDTNew = json['PDTNew'];
    isCode = json['IsCode'];
    priceShow = json['PriceShow'];
    link = json['Link'];
    delFlag = json['DelFlag'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    uRL = json['URL'];
    rating = json['Rating'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RNo'] = rNo;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['SEOName'] = sEOName;
    data['Image'] = image;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['Stock'] = stock;
    data['SLRFlg'] = sLRFlg;
    data['APOfferTyp'] = aPOfferTyp;
    data['APOfferPrice'] = aPOfferPrice;
    data['APOfferPer'] = aPOfferPer;
    data['ActualPrice'] = actualPrice;
    data['ActualSOPrice'] = actualSOPrice;
    data['CPOfferTyp'] = cPOfferTyp;
    data['CPOfferPrice'] = cPOfferPrice;
    data['CPOfferPer'] = cPOfferPer;
    data['CouponPrice'] = couponPrice;
    data['CouponSOPrice'] = couponSOPrice;
    data['SelingPrice'] = selingPrice;
    data['PriceDiff'] = priceDiff;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['CTGId'] = cTGId;
    data['PDTNew'] = pDTNew;
    data['IsCode'] = isCode;
    data['PriceShow'] = priceShow;
    data['Link'] = link;
    data['DelFlag'] = delFlag;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['URL'] = uRL;
    data['Rating'] = rating;
    data['Description'] = description;
    return data;
  }
}

class OnandOnProduct {
  int? rNo;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  String? sEOName;
  String? image;
  bool? stockCheck;
  int? stockQty;
  int? stock;
  bool? sLRFlg;
  int? aPOfferTyp;
  double? aPOfferPrice;
  int? aPOfferPer;
  double? actualPrice;
  double? actualSOPrice;
  int? cPOfferTyp;
  double? cPOfferPrice;
  int? cPOfferPer;
  double? couponPrice;
  double? couponSOPrice;
  double? selingPrice;
  double? priceDiff;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? cTGId;
  int? pDTNew;
  int? isCode;
  bool? priceShow;
  String? link;
  bool? delFlag;
  int? category;
  int? parentCategory;
  String? uRL;
  double? rating;
  String? description;

  OnandOnProduct(
      {this.rNo,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.sEOName,
      this.image,
      this.stockCheck,
      this.stockQty,
      this.stock,
      this.sLRFlg,
      this.aPOfferTyp,
      this.aPOfferPrice,
      this.aPOfferPer,
      this.actualPrice,
      this.actualSOPrice,
      this.cPOfferTyp,
      this.cPOfferPrice,
      this.cPOfferPer,
      this.couponPrice,
      this.couponSOPrice,
      this.selingPrice,
      this.priceDiff,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.cTGId,
      this.pDTNew,
      this.isCode,
      this.priceShow,
      this.link,
      this.delFlag,
      this.category,
      this.parentCategory,
      this.uRL,
      this.rating,
      this.description});

  OnandOnProduct.fromJson(Map<String, dynamic> json) {
    rNo = json['RNo'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    sEOName = json['SEOName'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualPrice = json['ActualPrice'];
    actualSOPrice = json['ActualSOPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponPrice = json['CouponPrice'];
    couponSOPrice = json['CouponSOPrice'];
    selingPrice = json['SelingPrice'];
    priceDiff = json['PriceDiff'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    cTGId = json['CTGId'];
    pDTNew = json['PDTNew'];
    isCode = json['IsCode'];
    priceShow = json['PriceShow'];
    link = json['Link'];
    delFlag = json['DelFlag'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    uRL = json['URL'];
    rating = json['Rating'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RNo'] = rNo;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['SEOName'] = sEOName;
    data['Image'] = image;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['Stock'] = stock;
    data['SLRFlg'] = sLRFlg;
    data['APOfferTyp'] = aPOfferTyp;
    data['APOfferPrice'] = aPOfferPrice;
    data['APOfferPer'] = aPOfferPer;
    data['ActualPrice'] = actualPrice;
    data['ActualSOPrice'] = actualSOPrice;
    data['CPOfferTyp'] = cPOfferTyp;
    data['CPOfferPrice'] = cPOfferPrice;
    data['CPOfferPer'] = cPOfferPer;
    data['CouponPrice'] = couponPrice;
    data['CouponSOPrice'] = couponSOPrice;
    data['SelingPrice'] = selingPrice;
    data['PriceDiff'] = priceDiff;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['CTGId'] = cTGId;
    data['PDTNew'] = pDTNew;
    data['IsCode'] = isCode;
    data['PriceShow'] = priceShow;
    data['Link'] = link;
    data['DelFlag'] = delFlag;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['URL'] = uRL;
    data['Rating'] = rating;
    data['Description'] = description;
    return data;
  }
}

class ElementProduct {
  int? rNo;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  String? sEOName;
  String? image;
  bool? stockCheck;
  int? stockQty;
  int? stock;
  bool? sLRFlg;
  int? aPOfferTyp;
  double? aPOfferPrice;
  int? aPOfferPer;
  double? actualPrice;
  double? actualSOPrice;
  int? cPOfferTyp;
  double? cPOfferPrice;
  int? cPOfferPer;
  double? couponPrice;
  double? couponSOPrice;
  double? selingPrice;
  double? priceDiff;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? cTGId;
  int? pDTNew;
  int? isCode;
  bool? priceShow;
  String? link;
  bool? delFlag;
  int? category;
  int? parentCategory;
  String? uRL;
  double? rating;
  String? description;

  ElementProduct(
      {this.rNo,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.sEOName,
      this.image,
      this.stockCheck,
      this.stockQty,
      this.stock,
      this.sLRFlg,
      this.aPOfferTyp,
      this.aPOfferPrice,
      this.aPOfferPer,
      this.actualPrice,
      this.actualSOPrice,
      this.cPOfferTyp,
      this.cPOfferPrice,
      this.cPOfferPer,
      this.couponPrice,
      this.couponSOPrice,
      this.selingPrice,
      this.priceDiff,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.cTGId,
      this.pDTNew,
      this.isCode,
      this.priceShow,
      this.link,
      this.delFlag,
      this.category,
      this.parentCategory,
      this.uRL,
      this.rating,
      this.description});

  ElementProduct.fromJson(Map<String, dynamic> json) {
    rNo = json['RNo'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    sEOName = json['SEOName'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualPrice = json['ActualPrice'];
    actualSOPrice = json['ActualSOPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponPrice = json['CouponPrice'];
    couponSOPrice = json['CouponSOPrice'];
    selingPrice = json['SelingPrice'];
    priceDiff = json['PriceDiff'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    cTGId = json['CTGId'];
    pDTNew = json['PDTNew'];
    isCode = json['IsCode'];
    priceShow = json['PriceShow'];
    link = json['Link'];
    delFlag = json['DelFlag'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    uRL = json['URL'];
    rating = json['Rating'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RNo'] = rNo;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['SEOName'] = sEOName;
    data['Image'] = image;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['Stock'] = stock;
    data['SLRFlg'] = sLRFlg;
    data['APOfferTyp'] = aPOfferTyp;
    data['APOfferPrice'] = aPOfferPrice;
    data['APOfferPer'] = aPOfferPer;
    data['ActualPrice'] = actualPrice;
    data['ActualSOPrice'] = actualSOPrice;
    data['CPOfferTyp'] = cPOfferTyp;
    data['CPOfferPrice'] = cPOfferPrice;
    data['CPOfferPer'] = cPOfferPer;
    data['CouponPrice'] = couponPrice;
    data['CouponSOPrice'] = couponSOPrice;
    data['SelingPrice'] = selingPrice;
    data['PriceDiff'] = priceDiff;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['CTGId'] = cTGId;
    data['PDTNew'] = pDTNew;
    data['IsCode'] = isCode;
    data['PriceShow'] = priceShow;
    data['Link'] = link;
    data['DelFlag'] = delFlag;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['URL'] = uRL;
    data['Rating'] = rating;
    data['Description'] = description;
    return data;
  }
}
