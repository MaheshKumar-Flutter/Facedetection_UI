class MiidModel {
  String? message;
  bool? clear;
  int? rOId;
  String? oTP;
  bool? reOTP;
  int? deliveryMode;
  String? mIId;
  bool? addressFlag;

  MiidModel(
      {this.message,
      this.clear,
      this.rOId,
      this.oTP,
      this.reOTP,
      this.deliveryMode,
      this.mIId,
      this.addressFlag});

  MiidModel.fromJson(Map<String, dynamic> json) {
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