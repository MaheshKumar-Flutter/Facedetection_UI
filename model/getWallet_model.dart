class GetWalletModel {
  DbResult? dbResult;
  WalletBalanceInfo? walletBalanceInfo;
  WalletBalancedetails? walletBalancedetails;
  List<CouponValidateInfo>? couponValidateInfo;

  GetWalletModel(
      {this.dbResult,
        this.walletBalanceInfo,
        this.walletBalancedetails,
        this.couponValidateInfo});

  GetWalletModel.fromJson(Map<String, dynamic> json) {
    dbResult = json['DbResult'] != null
        ? DbResult.fromJson(json['DbResult'])
        : null;
    walletBalanceInfo = json['walletBalanceInfo'] != null
        ? WalletBalanceInfo.fromJson(json['walletBalanceInfo'])
        : null;
    walletBalancedetails = json['walletBalancedetails'] != null
        ? WalletBalancedetails.fromJson(json['walletBalancedetails'])
        : null;
    if (json['couponValidateInfo'] != null) {
      couponValidateInfo = <CouponValidateInfo>[];
      json['couponValidateInfo'].forEach((v) {
        couponValidateInfo!.add(CouponValidateInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dbResult != null) {
      data['DbResult'] = dbResult!.toJson();
    }
    if (walletBalanceInfo != null) {
      data['walletBalanceInfo'] = walletBalanceInfo!.toJson();
    }
    if (walletBalancedetails != null) {
      data['walletBalancedetails'] = walletBalancedetails!.toJson();
    }
    if (couponValidateInfo != null) {
      data['couponValidateInfo'] =
          couponValidateInfo!.map((v) => v.toJson()).toList();
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
  String? address;

  DbResult(
      {this.message,
        this.clear,
        this.rOId,
        this.oTP,
        this.reOTP,
        this.deliveryMode,
        this.mIId,
        this.addressFlag,
        this.address});

  DbResult.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    rOId = json['ROId'];
    oTP = json['OTP'];
    reOTP = json['ReOTP'];
    deliveryMode = json['DeliveryMode'];
    mIId = json['MIId'];
    addressFlag = json['AddressFlag'];
    address = json['Address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Clear'] = clear;
    data['ROId'] = rOId;
    data['OTP'] = oTP;
    data['ReOTP'] = reOTP;
    data['DeliveryMode'] = deliveryMode;
    data['MIId'] = mIId;
    data['AddressFlag'] = addressFlag;
    data['Address'] = address;
    return data;
  }
}

class WalletBalanceInfo {
  String? invoiceNumber;
  String? date;
  String? outlet;

  WalletBalanceInfo({this.invoiceNumber, this.date, this.outlet});

  WalletBalanceInfo.fromJson(Map<String, dynamic> json) {
    invoiceNumber = json['InvoiceNumber'];
    date = json['Date'];
    outlet = json['Outlet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['InvoiceNumber'] = invoiceNumber;
    data['Date'] = date;
    data['Outlet'] = outlet;
    return data;
  }
}

class WalletBalancedetails {
  String? mIID;
  double? totalBalance;
  double? cNBalance;
  double? billCapValue;
  double? itemCapValue;

  WalletBalancedetails(
      {this.mIID,
        this.totalBalance,
        this.cNBalance,
        this.billCapValue,
        this.itemCapValue});

  WalletBalancedetails.fromJson(Map<String, dynamic> json) {
    mIID = json['MIID'];
    totalBalance = json['TotalBalance'];
    cNBalance = json['CNBalance'];
    billCapValue = json['BillCapValue'];
    itemCapValue = json['ItemCapValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MIID'] = mIID;
    data['TotalBalance'] = totalBalance;
    data['CNBalance'] = cNBalance;
    data['BillCapValue'] = billCapValue;
    data['ItemCapValue'] = itemCapValue;
    return data;
  }
}

class CouponValidateInfo {
  int? privilegeType;
  String? privilegeName;
  double? balance;

  CouponValidateInfo({this.privilegeType, this.privilegeName, this.balance});

  CouponValidateInfo.fromJson(Map<String, dynamic> json) {
    privilegeType = json['PrivilegeType'];
    privilegeName = json['PrivilegeName'];
    balance = json['Balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PrivilegeType'] = privilegeType;
    data['PrivilegeName'] = privilegeName;
    data['Balance'] = balance;
    return data;
  }
}