class SetCartModel {
  bool? variantCheck;
  int? cRTId;
  String? messagePop;
  bool? refresh;
  bool? isSessionTimeOut;
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

  SetCartModel(
      {this.variantCheck,
        this.cRTId,
        this.messagePop,
        this.refresh,
        this.isSessionTimeOut,
        this.message,
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

  SetCartModel.fromJson(Map<String, dynamic> json) {
    variantCheck = json['VariantCheck'];
    cRTId = json['CRTId'];
    messagePop = json['MessagePop'];
    refresh = json['Refresh'];
    isSessionTimeOut = json['IsSessionTimeOut'];
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['VariantCheck'] = this.variantCheck;
    data['CRTId'] = this.cRTId;
    data['MessagePop'] = this.messagePop;
    data['Refresh'] = this.refresh;
    data['IsSessionTimeOut'] = this.isSessionTimeOut;
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    data['Redirect'] = this.redirect;
    data['Link'] = this.link;
    data['USRId'] = this.uSRId;
    data['WalletNo'] = this.walletNo;
    data['WSId'] = this.wSId;
    data['WTId'] = this.wTId;
    data['Flag'] = this.flag;
    data['PromoCodeType'] = this.promoCodeType;
    data['PaymentType'] = this.paymentType;
    data['IsExpired'] = this.isExpired;
    data['PGId'] = this.pGId;
    data['WPGId'] = this.wPGId;
    data['PreODRNo'] = this.preODRNo;
    data['Response'] = this.response;
    data['ODRId'] = this.oDRId;
    data['DataList'] = this.dataList;
    data['ResponseType'] = this.responseType;
    data['UserIntent'] = this.userIntent;
    data['PUCId'] = this.pUCId;
    data['Mobile'] = this.mobile;
    data['SMS'] = this.sMS;
    data['WLId'] = this.wLId;
    return data;
  }
}