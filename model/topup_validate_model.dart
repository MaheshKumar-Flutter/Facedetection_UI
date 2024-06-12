class TopUpValidate {
  DbResult? dbResult;
  List<CouponvalidateInfo>? couponvalidateInfo;

  TopUpValidate({this.dbResult, this.couponvalidateInfo});

  TopUpValidate.fromJson(Map<String, dynamic> json) {
    dbResult = json['DbResult'] != null
        ? new DbResult.fromJson(json['DbResult'])
        : null;
    if (json['couponvalidateInfo'] != null) {
      couponvalidateInfo = <CouponvalidateInfo>[];
      json['couponvalidateInfo'].forEach((v) {
        couponvalidateInfo!.add(new CouponvalidateInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dbResult != null) {
      data['DbResult'] = this.dbResult!.toJson();
    }
    if (this.couponvalidateInfo != null) {
      data['couponvalidateInfo'] =
          this.couponvalidateInfo!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    data['ROId'] = this.rOId;
    data['OTP'] = this.oTP;
    data['ReOTP'] = this.reOTP;
    data['DeliveryMode'] = this.deliveryMode;
    data['MIId'] = this.mIId;
    data['AddressFlag'] = this.addressFlag;
    return data;
  }
}

class CouponvalidateInfo {
  int? privilegeType;
  String? privilegeName;
  double? balance;

  CouponvalidateInfo({this.privilegeType, this.privilegeName, this.balance});

  CouponvalidateInfo.fromJson(Map<String, dynamic> json) {
    privilegeType = json['PrivilegeType'];
    privilegeName = json['PrivilegeName'];
    balance = json['Balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PrivilegeType'] = this.privilegeType;
    data['PrivilegeName'] = this.privilegeName;
    data['Balance'] = this.balance;
    return data;
  }
}