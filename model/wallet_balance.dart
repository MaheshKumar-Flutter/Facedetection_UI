class WalletBalanceModel {
  DbResult? dbResult;
  List<WalletInfo>? walletInfo;

  WalletBalanceModel({this.dbResult, this.walletInfo});

  WalletBalanceModel.fromJson(Map<String, dynamic> json) {
    dbResult = json['DbResult'] != null
        ? DbResult.fromJson(json['DbResult'])
        : null;
    if (json['walletInfo'] != null) {
      walletInfo = <WalletInfo>[];
      json['walletInfo'].forEach((v) {
        walletInfo!.add(WalletInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (dbResult != null) {
      data['DbResult'] = dbResult!.toJson();
    }
    if (walletInfo != null) {
      data['walletInfo'] = walletInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DbResult {
  String? message;
  bool? clear;
  int? rOId;
  String? oTP;
  bool? reOTP;
  int? deliveryMode;
  String? mIId;
  bool? addressFlag;

  DbResult(
      {this.message,
        this.clear,
        this.rOId,
        this.oTP,
        this.reOTP,
        this.deliveryMode,
        this.mIId,
        this.addressFlag});

  DbResult.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    rOId = json['ROId'];
    oTP = json['OTP'];
    reOTP = json['ReOTP'];
    deliveryMode = json['DeliveryMode'];
    mIId = json['MIId'];
    addressFlag = json['AddressFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    data['Clear'] = clear;
    data['ROId'] = rOId;
    data['OTP'] = oTP;
    data['ReOTP'] = reOTP;
    data['DeliveryMode'] = deliveryMode;
    data['MIId'] = mIId;
    data['AddressFlag'] = addressFlag;
    return data;
  }
}

class WalletInfo {
  String? outlet;
  String? address;
  int? walletType;
  bool? topupEnable;
  double? g75;
  double? g35;
  double? g75Promo;
  double? gEFS;

  WalletInfo(
      {this.outlet,
        this.address,
        this.walletType,
        this.topupEnable,
        this.g75,
        this.g35,
        this.g75Promo,
        this.gEFS});

  WalletInfo.fromJson(Map<String, dynamic> json) {
    outlet = json['Outlet'];
    address = json['Address'];
    walletType = json['WalletType'];
    topupEnable = json['TopupEnable'];
    g75 = json['G75'];
    g35 = json['G35'];
    g75Promo = json['G75Promo'];
    gEFS = json['GEFS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Outlet'] = outlet;
    data['Address'] = address;
    data['WalletType'] = walletType;
    data['TopupEnable'] = topupEnable;
    data['G75'] = g75;
    data['G35'] = g35;
    data['G75Promo'] = g75Promo;
    data['GEFS'] = gEFS;
    return data;
  }
}