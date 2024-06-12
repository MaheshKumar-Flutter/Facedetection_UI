class SetOrderCancelModel {
  String? message;
  bool? clear;
  bool? redirect;
  bool? link;
  int? uSRId;
  String? walletNo;
  int? wSId;
  int? wTId;
  bool? flag;
  String? promoCodeType;
  int? paymentType;
  bool? isExpired;
  int? pGId;
  int? wPGId;
  String? preODRNo;
  String? response;
  String? oDRId;
  String? dataList;
  String? responseType;
  String? userIntent;
  String? pUCId;
  String? mobile;
  String? sMS;
  int? wLId;

  SetOrderCancelModel(
      {this.message,
        this.clear,
        this.redirect,
        this.link,
        this.uSRId,
        this.walletNo,
        this.wSId,
        this.wTId,
        this.flag,
        this.promoCodeType,
        this.paymentType,
        this.isExpired,
        this.pGId,
        this.wPGId,
        this.preODRNo,
        this.response,
        this.oDRId,
        this.dataList,
        this.responseType,
        this.userIntent,
        this.pUCId,
        this.mobile,
        this.sMS,
        this.wLId});

  SetOrderCancelModel.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    redirect = json['Redirect'];
    link = json['Link'];
    uSRId = json['USRId'];
    walletNo = json['WalletNo'];
    wSId = json['WSId'];
    wTId = json['WTId'];
    flag = json['Flag'];
    promoCodeType = json['PromoCodeType'];
    paymentType = json['PaymentType'];
    isExpired = json['IsExpired'];
    pGId = json['PGId'];
    wPGId = json['WPGId'];
    preODRNo = json['PreODRNo'];
    response = json['Response'];
    oDRId = json['ODRId'];
    dataList = json['DataList'];
    responseType = json['ResponseType'];
    userIntent = json['UserIntent'];
    pUCId = json['PUCId'];
    mobile = json['Mobile'];
    sMS = json['SMS'];
    wLId = json['WLId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Clear'] = clear;
    data['Redirect'] = redirect;
    data['Link'] = link;
    data['USRId'] = uSRId;
    data['WalletNo'] = walletNo;
    data['WSId'] = wSId;
    data['WTId'] = wTId;
    data['Flag'] = flag;
    data['PromoCodeType'] = promoCodeType;
    data['PaymentType'] = paymentType;
    data['IsExpired'] = isExpired;
    data['PGId'] = pGId;
    data['WPGId'] = wPGId;
    data['PreODRNo'] = preODRNo;
    data['Response'] = response;
    data['ODRId'] = oDRId;
    data['DataList'] = dataList;
    data['ResponseType'] = responseType;
    data['UserIntent'] = userIntent;
    data['PUCId'] = pUCId;
    data['Mobile'] = mobile;
    data['SMS'] = sMS;
    data['WLId'] = wLId;
    return data;
  }
}