class GetProfileModel {
  int? uSRId;
  int? gUId;
  int? dBRId;
  String? loginId;
  String? name;
  int? gender;
  String? dOB;
  String? address;
  String? landMark;
  String? city;
  int? sTTId;
  String? state;
  int? cNTId;
  String? country;
  String? pincode;
  String? phone;
  String? mobile;
  String? emailId;
  String? hQId;
  String? hintAnswer;
  String? shippingAddress;
  bool? newsLetter;
  String? registerFrom;
  bool? emailConfirm;
  bool? active;
  bool? delflag;
  String? date;
  String? password;
  String? walletNo;
  String? walletPassword;
  String? code;
  String? socialId;
  String? guestName;
  String? mIName;
  int? bAId;
  int? sAId;
  bool? isBillingAddress;
  bool? isShippingAddress;
  String? gSTNo;
  int? rOId;
  int? oLTId;
  int? customerId;
  int? orderMode;
  int? mIId;
  int? alternateMobileNo;

  GetProfileModel(
      {this.uSRId,
        this.gUId,
        this.dBRId,
        this.loginId,
        this.name,
        this.gender,
        this.dOB,
        this.address,
        this.landMark,
        this.city,
        this.sTTId,
        this.state,
        this.cNTId,
        this.country,
        this.pincode,
        this.phone,
        this.mobile,
        this.emailId,
        this.hQId,
        this.hintAnswer,
        this.shippingAddress,
        this.newsLetter,
        this.registerFrom,
        this.emailConfirm,
        this.active,
        this.delflag,
        this.date,
        this.password,
        this.walletNo,
        this.walletPassword,
        this.code,
        this.socialId,
        this.guestName,
        this.mIName,
        this.bAId,
        this.sAId,
        this.isBillingAddress,
        this.isShippingAddress,
        this.gSTNo,
        this.rOId,
        this.oLTId,
        this.customerId,
        this.orderMode,
        this.mIId,
        this.alternateMobileNo});

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    uSRId = json['USRId'];
    gUId = json['GUId'];
    dBRId = json['DBRId'];
    loginId = json['LoginId'];
    name = json['Name'];
    gender = json['Gender'];
    dOB = json['DOB'];
    address = json['Address'];
    landMark = json['LandMark'];
    city = json['City'];
    sTTId = json['STTId'];
    state = json['State'];
    cNTId = json['CNTId'];
    country = json['Country'];
    pincode = json['Pincode'];
    phone = json['Phone'];
    mobile = json['Mobile'];
    emailId = json['EmailId'];
    hQId = json['HQId'];
    hintAnswer = json['HintAnswer'];
    shippingAddress = json['ShippingAddress'];
    newsLetter = json['NewsLetter'];
    registerFrom = json['RegisterFrom'];
    emailConfirm = json['EmailConfirm'];
    active = json['Active'];
    delflag = json['Delflag'];
    date = json['Date'];
    password = json['Password'];
    walletNo = json['WalletNo'];
    walletPassword = json['WalletPassword'];
    code = json['Code'];
    socialId = json['SocialId'];
    guestName = json['GuestName'];
    mIName = json['MIName'];
    bAId = json['BAId'];
    sAId = json['SAId'];
    isBillingAddress = json['IsBillingAddress'];
    isShippingAddress = json['IsShippingAddress'];
    gSTNo = json['GSTNo'];
    rOId = json['ROId'];
    oLTId = json['OLTId'];
    customerId = json['CustomerId'];
    orderMode = json['OrderMode'];
    mIId = json['MIId'];
    alternateMobileNo = json['AlternateMobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USRId'] = this.uSRId;
    data['GUId'] = this.gUId;
    data['DBRId'] = this.dBRId;
    data['LoginId'] = this.loginId;
    data['Name'] = this.name;
    data['Gender'] = this.gender;
    data['DOB'] = this.dOB;
    data['Address'] = this.address;
    data['LandMark'] = this.landMark;
    data['City'] = this.city;
    data['STTId'] = this.sTTId;
    data['State'] = this.state;
    data['CNTId'] = this.cNTId;
    data['Country'] = this.country;
    data['Pincode'] = this.pincode;
    data['Phone'] = this.phone;
    data['Mobile'] = this.mobile;
    data['EmailId'] = this.emailId;
    data['HQId'] = this.hQId;
    data['HintAnswer'] = this.hintAnswer;
    data['ShippingAddress'] = this.shippingAddress;
    data['NewsLetter'] = this.newsLetter;
    data['RegisterFrom'] = this.registerFrom;
    data['EmailConfirm'] = this.emailConfirm;
    data['Active'] = this.active;
    data['Delflag'] = this.delflag;
    data['Date'] = this.date;
    data['Password'] = this.password;
    data['WalletNo'] = this.walletNo;
    data['WalletPassword'] = this.walletPassword;
    data['Code'] = this.code;
    data['SocialId'] = this.socialId;
    data['GuestName'] = this.guestName;
    data['MIName'] = this.mIName;
    data['BAId'] = this.bAId;
    data['SAId'] = this.sAId;
    data['IsBillingAddress'] = this.isBillingAddress;
    data['IsShippingAddress'] = this.isShippingAddress;
    data['GSTNo'] = this.gSTNo;
    data['ROId'] = this.rOId;
    data['OLTId'] = this.oLTId;
    data['CustomerId'] = this.customerId;
    data['OrderMode'] = this.orderMode;
    data['MIId'] = this.mIId;
    data['AlternateMobileNo'] = this.alternateMobileNo;
    return data;
  }
}