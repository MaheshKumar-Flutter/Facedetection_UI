class OTPModel {
  String? message;
  bool? clear;
  int? rOId;
  String? oTP;
  bool? reOTP;
  int? deliveryMode;
  String? mIId;
  bool? addressFlag;

  OTPModel(
      {this.message,
      this.clear,
      this.rOId,
      this.oTP,
      this.reOTP,
      this.deliveryMode,
      this.mIId,
      this.addressFlag});

  OTPModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
