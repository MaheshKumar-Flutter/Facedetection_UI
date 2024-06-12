class WishListModel {
  List<LikedList>? likedList;

  WishListModel({this.likedList});

  WishListModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      likedList = <LikedList>[];
      json['m_Item1'].forEach((v) {
        likedList!.add(LikedList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (likedList != null) {
      data['m_Item1'] = likedList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LikedList {
  String? wLId;
  String? pDTId;
  String? pTId;
  String? comments;
  String? product;
  String? type;
  String? colorVRTId;
  String? color;
  String? sizeVRTId;
  String? size;
  String? image;
  String? aPOfferTyp;
  String? aPOfferPrice;
  String? aPOfferPer;
  String? actualPrice;
  String? actualSOPrice;
  String? cPOfferTyp;
  String? cPOfferPrice;
  String? cPOfferPer;
  String? couponPrice;
  String? couponSOPrice;
  String? sellingPrice;
  String? sLRFlg;
  String? stockQty;
  String? stockCheck;
  String? pDTNew;
  String? productCode;

  LikedList(
      {this.wLId,
        this.pDTId,
        this.pTId,
        this.comments,
        this.product,
        this.type,
        this.colorVRTId,
        this.color,
        this.sizeVRTId,
        this.size,
        this.image,
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
        this.sellingPrice,
        this.sLRFlg,
        this.stockQty,
        this.stockCheck,
        this.pDTNew,
        this.productCode});

  LikedList.fromJson(Map<String, dynamic> json) {
    wLId = json['WLId'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    comments = json['Comments'];
    product = json['Product'];
    type = json['Type'];
    colorVRTId = json['ColorVRTId'];
    color = json['Color'];
    sizeVRTId = json['SizeVRTId'];
    size = json['Size'];
    image = json['Image'];
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
    sellingPrice = json['SellingPrice'];
    sLRFlg = json['SLRFlg'];
    stockQty = json['StockQty'];
    stockCheck = json['StockCheck'];
    pDTNew = json['PDTNew'];
    productCode = json['ProductCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['WLId'] = wLId;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Comments'] = comments;
    data['Product'] = product;
    data['Type'] = type;
    data['ColorVRTId'] = colorVRTId;
    data['Color'] = color;
    data['SizeVRTId'] = sizeVRTId;
    data['Size'] = size;
    data['Image'] = image;
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
    data['SellingPrice'] = sellingPrice;
    data['SLRFlg'] = sLRFlg;
    data['StockQty'] = stockQty;
    data['StockCheck'] = stockCheck;
    data['PDTNew'] = pDTNew;
    data['ProductCode'] = productCode;
    return data;
  }
}