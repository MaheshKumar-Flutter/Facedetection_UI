
class CategoryModelListModel {
  List<CategoryModel>? myList = [];
  CategoryModelListModel({this.myList});
  factory CategoryModelListModel.fromJson(List<dynamic> parsedJson) {
    return CategoryModelListModel(
        myList: parsedJson.map((e) => CategoryModel.fromJson(e)).toList());
  }
}


class CategoryModel {
  String? pDTNew;
  String? pDTId;
  String? pTId;
  String? type;
  String? image;
  String? stockCheck;
  String? stockQty;
  String? stock;
  String? sLRFlg;
  String? product;
  String? aPOfferTyp;
  String? aPOfferPrice;
  String? aPOfferPer;
  String? actualSOPrice;
  String? actualPrice;
  String? cPOfferTyp;
  String? cPOfferPrice;
  String? cPOfferPer;
  String? couponSOPrice;
  String? couponPrice;
  String? sellingPrice;
  String? priceDiff;
  String? cTGId;
  String? rating;
  String? productCode;

  CategoryModel(
      {this.pDTNew,
        this.pDTId,
        this.pTId,
        this.type,
        this.image,
        this.stockCheck,
        this.stockQty,
        this.stock,
        this.sLRFlg,
        this.product,
        this.aPOfferTyp,
        this.aPOfferPrice,
        this.aPOfferPer,
        this.actualSOPrice,
        this.actualPrice,
        this.cPOfferTyp,
        this.cPOfferPrice,
        this.cPOfferPer,
        this.couponSOPrice,
        this.couponPrice,
        this.sellingPrice,
        this.priceDiff,
        this.cTGId,
        this.rating,
        this.productCode});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    pDTNew = json['PDTNew'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    image = json['Image'];
    stockCheck = json['StockCheck'];
    stockQty = json['StockQty'];
    stock = json['Stock'];
    sLRFlg = json['SLRFlg'];
    product = json['Product'];
    aPOfferTyp = json['APOfferTyp'];
    aPOfferPrice = json['APOfferPrice'];
    aPOfferPer = json['APOfferPer'];
    actualSOPrice = json['ActualSOPrice'];
    actualPrice = json['ActualPrice'];
    cPOfferTyp = json['CPOfferTyp'];
    cPOfferPrice = json['CPOfferPrice'];
    cPOfferPer = json['CPOfferPer'];
    couponSOPrice = json['CouponSOPrice'];
    couponPrice = json['CouponPrice'];
    sellingPrice = json['SellingPrice'];
    priceDiff = json['PriceDiff'];
    cTGId = json['CTGId'];
    rating = json['Rating'];
    productCode = json['ProductCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PDTNew'] = this.pDTNew;
    data['PDTId'] = this.pDTId;
    data['PTId'] = this.pTId;
    data['Type'] = this.type;
    data['Image'] = this.image;
    data['StockCheck'] = this.stockCheck;
    data['StockQty'] = this.stockQty;
    data['Stock'] = this.stock;
    data['SLRFlg'] = this.sLRFlg;
    data['Product'] = this.product;
    data['APOfferTyp'] = this.aPOfferTyp;
    data['APOfferPrice'] = this.aPOfferPrice;
    data['APOfferPer'] = this.aPOfferPer;
    data['ActualSOPrice'] = this.actualSOPrice;
    data['ActualPrice'] = this.actualPrice;
    data['CPOfferTyp'] = this.cPOfferTyp;
    data['CPOfferPrice'] = this.cPOfferPrice;
    data['CPOfferPer'] = this.cPOfferPer;
    data['CouponSOPrice'] = this.couponSOPrice;
    data['CouponPrice'] = this.couponPrice;
    data['SellingPrice'] = this.sellingPrice;
    data['PriceDiff'] = this.priceDiff;
    data['CTGId'] = this.cTGId;
    data['Rating'] = this.rating;
    data['ProductCode'] = this.productCode;
    return data;
  }
}