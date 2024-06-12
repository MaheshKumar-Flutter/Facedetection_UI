class ProductDetailsModel {
  ProductDetails? productDetails;
  List<ProductImages>? productImages;
  //List<ProductVariantImages>? productVariantImages;
  // List<Null>? sizeChart;
  UserInfo? userInfo;
  List<ProductDesc>? productDesc;
  List<ComboOffer>? comboOffer;

  List<OfferMessages>? offerMessages;

  ProductDetailsModel(

      {this.productDetails,
      this.productImages,
      // this.productVariantImages,
      //   this.sizeChart,
      this.userInfo,
        this.productDesc,
      this.comboOffer,
      this.offerMessages});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    productDetails = json['ProductDetails'] != null
        ? ProductDetails.fromJson(json['ProductDetails'])
        : null;
    if (json['ProductImages'] != null) {
      productImages = <ProductImages>[];
      json['ProductImages'].forEach((v) {
        productImages!.add(ProductImages.fromJson(v));
      });
    }
    // if (json['ProductVariantImages'] != null) {
    //   productVariantImages = <ProductVariantImages>[];
    //   json['ProductVariantImages'].forEach((v) {
    //     productVariantImages!.add(new ProductVariantImages.fromJson(v));
    //   });
    // }
    // if (json['SizeChart'] != null) {
    //   sizeChart = <Null>[];
    //   json['SizeChart'].forEach((v) {
    //     sizeChart!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['ProductDesc'] != null) {
      productDesc = <ProductDesc>[];
      json['ProductDesc'].forEach((v) {
        productDesc!.add(new ProductDesc.fromJson(v));
      });
    }
    userInfo =
        json['UserInfo'] != null ? UserInfo.fromJson(json['UserInfo']) : null;
    if (json['ComboOffer'] != null) {
      comboOffer = <ComboOffer>[];
      json['ComboOffer'].forEach((v) {
        comboOffer!.add(ComboOffer.fromJson(v));
      });
    }
    if (json['OfferMessages'] != null) {
      offerMessages = <OfferMessages>[];
      json['OfferMessages'].forEach((v) {
        offerMessages!.add(OfferMessages.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (productDetails != null) {
      data['ProductDetails'] = productDetails!.toJson();
    }
    if (productImages != null) {
      data['ProductImages'] = productImages!.map((v) => v.toJson()).toList();
    }
    // if (this.productVariantImages != null) {
    //   data['ProductVariantImages'] =
    //       this.productVariantImages!.map((v) => v.toJson()).toList();
    // }
    // if (this.sizeChart != null) {
    //   data['SizeChart'] = this.sizeChart!.map((v) => v.toJson()).toList();
    // }
    if (userInfo != null) {
      data['UserInfo'] = userInfo!.toJson();
    }
    if (productDesc != null) {
      data['ProductDesc'] = productDesc!.map((v) => v.toJson()).toList();
    }
    if (comboOffer != null) {
      data['ComboOffer'] = comboOffer!.map((v) => v.toJson()).toList();
    }
    if (offerMessages != null) {
      data['OfferMessages'] = offerMessages!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductDetails {
  int? pDTId;
  String? name;
  int? pTId;
  String? type;
  String? code;
  String? itemCode;
  String? comments;
  String? descLink;
  int? bRDId;
  String? brand;
  String? brandImage;
  String? image;
  double? rating;
  int? reviewCount;
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
  double? priceShow;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  int? stockCheck;
  int? stockQty;
  bool? sLRFlag;
  String? videoLink;
  String? videoLinkEng;
  String? videoLinkHin;
  String? videoLinkTam;
  String? videoLinkMal;
  String? videoLinkKan;
  String? videoLinkMar;
  String? videoLinkBen;
  int? pDTNew;
  int? bRDNew;
  int? offerYN;
  String? pageTitle;
  String? metaKeyWord;
  String? metaDescription;
  String? category;
  String? parentCategory;
  String? details;
  String? isWishList;
  int? wLId;

  ProductDetails(
      {this.pDTId,
      this.name,
      this.pTId,
      this.type,
      this.code,
      this.itemCode,
      this.comments,
      this.descLink,
      this.bRDId,
      this.brand,
      this.brandImage,
      this.image,
      this.rating,
      this.reviewCount,
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
      this.priceShow,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.stockCheck,
      this.stockQty,
      this.sLRFlag,
      this.videoLink,
      this.videoLinkEng,
      this.videoLinkHin,
      this.videoLinkTam,
      this.videoLinkMal,
      this.videoLinkKan,
      this.videoLinkMar,
      this.videoLinkBen,
      this.pDTNew,
      this.bRDNew,
      this.offerYN,
      this.pageTitle,
      this.metaKeyWord,
      this.metaDescription,
      this.category,
      this.parentCategory,
      this.details,
      this.isWishList,
      this.wLId});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    pDTId = json['PDTId'];
    name = json['Name'];
    pTId = json['PTId'];
    type = json['Type'];
    code = json['Code'];
    itemCode = json['ItemCode'];
    comments = json['Comments'];
    descLink = json['DescLink'];
    bRDId = json['BRDId'];
    brand = json['Brand'];
    brandImage = json['BrandImage'];
    image = json['Image'];
    rating = json['Rating'];
    reviewCount = json['ReviewCount'];
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
    priceShow = json['PriceShow'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    sLRFlag = json['SLRFlag'];
    videoLink = json['VideoLink'];
    videoLinkEng = json['VideoLinkEng'];
    videoLinkHin = json['VideoLinkHin'];
    videoLinkTam = json['VideoLinkTam'];
    videoLinkMal = json['VideoLinkMal'];
    videoLinkKan = json['VideoLinkKan'];
    videoLinkMar = json['VideoLinkMar'];
    videoLinkBen = json['VideoLinkBen'];
    pDTNew = json['PDTNew'];
    bRDNew = json['BRDNew'];
    offerYN = json['OfferYN'];
    pageTitle = json['PageTitle'];
    metaKeyWord = json['MetaKeyWord'];
    metaDescription = json['MetaDescription'];
    category = json['Category'];
    parentCategory = json['ParentCategory'];
    details = json['Details'];
    isWishList = json['IsWishList'];
    wLId = json['WLId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PDTId'] = pDTId;
    data['Name'] = name;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Code'] = code;
    data['ItemCode'] = itemCode;
    data['Comments'] = comments;
    data['DescLink'] = descLink;
    data['BRDId'] = bRDId;
    data['Brand'] = brand;
    data['BrandImage'] = brandImage;
    data['Image'] = image;
    data['Rating'] = rating;
    data['ReviewCount'] = reviewCount;
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
    data['PriceShow'] = priceShow;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['StockCheck'] = stockCheck;
    data['StockQty'] = stockQty;
    data['SLRFlag'] = sLRFlag;
    data['VideoLink'] = videoLink;
    data['VideoLinkEng'] = videoLinkEng;
    data['VideoLinkHin'] = videoLinkHin;
    data['VideoLinkTam'] = videoLinkTam;
    data['VideoLinkMal'] = videoLinkMal;
    data['VideoLinkKan'] = videoLinkKan;
    data['VideoLinkMar'] = videoLinkMar;
    data['VideoLinkBen'] = videoLinkBen;
    data['PDTNew'] = pDTNew;
    data['BRDNew'] = bRDNew;
    data['OfferYN'] = offerYN;
    data['PageTitle'] = pageTitle;
    data['MetaKeyWord'] = metaKeyWord;
    data['MetaDescription'] = metaDescription;
    data['Category'] = category;
    data['ParentCategory'] = parentCategory;
    data['Details'] = details;
    data['IsWishList'] = isWishList;
    data['WLId'] = wLId;
    return data;
  }
}

class ProductImages {
  int? pIId;
  int? pDTId;
  String? name;
  String? image;
  String? main;

  ProductImages({this.pIId, this.pDTId, this.name, this.image, this.main});

  ProductImages.fromJson(Map<String, dynamic> json) {
    pIId = json['PIId'];
    pDTId = json['PDTId'];
    name = json['Name'];
    image = json['Image'];
    main = json['Main'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PIId'] = pIId;
    data['PDTId'] = pDTId;
    data['Name'] = name;
    data['Image'] = image;
    data['Main'] = main;
    return data;
  }
}

class UserInfo {
  String? loginId;

  UserInfo({this.loginId});

  UserInfo.fromJson(Map<String, dynamic> json) {
    loginId = json['LoginId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['LoginId'] = loginId;
    return data;
  }
}

class ComboOffer {
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

  ComboOffer(
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

  ComboOffer.fromJson(Map<String, dynamic> json) {
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

class OfferMessages {
  String? message;
  String? promoCode;
  String? products;

  OfferMessages({this.message, this.promoCode, this.products});

  OfferMessages.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    promoCode = json['PromoCode'];
    products = json['Products'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['PromoCode'] = promoCode;
    data['Products'] = products;
    return data;
  }
}

class ProductDesc {
  String? header;
  String? content;

  ProductDesc({this.header, this.content});

  ProductDesc.fromJson(Map<String, dynamic> json) {
    header = json['Header'];
    content = json['Content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Header'] = this.header;
    data['Content'] = this.content;
    return data;
  }
}

