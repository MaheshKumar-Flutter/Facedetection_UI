class PucListModel {
  DbResult? dbResult;
  List<PucInfo>? pucInfo;

  PucListModel({this.dbResult, this.pucInfo});

  PucListModel.fromJson(Map<String, dynamic> json) {
    dbResult = json['DbResult'] != null
        ? new DbResult.fromJson(json['DbResult'])
        : null;
    if (json['pucInfo'] != null) {
      pucInfo = <PucInfo>[];
      json['pucInfo'].forEach((v) {
        pucInfo!.add(new PucInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dbResult != null) {
      data['DbResult'] = this.dbResult!.toJson();
    }
    if (this.pucInfo != null) {
      data['pucInfo'] = this.pucInfo!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    data['ROId'] = this.rOId;
    data['OTP'] = this.oTP;
    data['ReOTP'] = this.reOTP;
    data['DeliveryMode'] = this.deliveryMode;
    data['MIId'] = this.mIId;
    data['AddressFlag'] = this.addressFlag;
    data['Address'] = this.address;
    return data;
  }
}

class PucInfo {
  int? pCId;
  int? oLTId;
  String? pUC;
  String? pUCCode;
  String? pincode;
  double? deliveryCharge;
  bool? active;
  String? pUCAddress;
  String? pUCPincode;
  String? pUCMobileNo;

  PucInfo(
      {this.pCId,
        this.oLTId,
        this.pUC,
        this.pUCCode,
        this.pincode,
        this.deliveryCharge,
        this.active,
        this.pUCAddress,
        this.pUCPincode,
        this.pUCMobileNo});

  PucInfo.fromJson(Map<String, dynamic> json) {
    pCId = json['PCId'];
    oLTId = json['OLTId'];
    pUC = json['PUC'];
    pUCCode = json['PUCCode'];
    pincode = json['Pincode'];
    deliveryCharge = json['DeliveryCharge'];
    active = json['Active'];
    pUCAddress = json['PUCAddress'];
    pUCPincode = json['PUCPincode'];
    pUCMobileNo = json['PUCMobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PCId'] = this.pCId;
    data['OLTId'] = this.oLTId;
    data['PUC'] = this.pUC;
    data['PUCCode'] = this.pUCCode;
    data['Pincode'] = this.pincode;
    data['DeliveryCharge'] = this.deliveryCharge;
    data['Active'] = this.active;
    data['PUCAddress'] = this.pUCAddress;
    data['PUCPincode'] = this.pUCPincode;
    data['PUCMobileNo'] = this.pUCMobileNo;
    return data;
  }
}