class ProfileUpdateModel {
  List<MItem1>? mItem1;
  List<MItem2>? mItem2;

  ProfileUpdateModel({this.mItem1, this.mItem2});

  ProfileUpdateModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <MItem1>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(new MItem1.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      mItem2 = <MItem2>[];
      json['m_Item2'].forEach((v) {
        mItem2!.add(new MItem2.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (mItem1 != null) {
      data['m_Item1'] = mItem1!.map((v) => v.toJson()).toList();
    }
    if (mItem2 != null) {
      data['m_Item2'] = mItem2!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MItem1 {
  String? message;
  String? clear;
  String? uSRId;
  String? walletNo;
  String? password;

  MItem1({this.message, this.clear, this.uSRId, this.walletNo, this.password});

  MItem1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    uSRId = json['USRId'];
    walletNo = json['WalletNo'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = message;
    data['Clear'] = clear;
    data['USRId'] = uSRId;
    data['WalletNo'] = walletNo;
    data['Password'] = password;
    return data;
  }
}

class MItem2 {
  String? uSRId;
  String? loginId;
  String? password;
  String? name;
  String? gender;
  String? dOB;
  String? address;
  String? landmark;
  String? city;
  String? sTTId;
  String? state;
  String? cNTId;
  String? country;
  String? pincode;
  String? phone;
  String? mobile;
  String? emailId;
  String? cusUniqueId;
  String? image;
  String? mIName;
  String? mIPassword;

  MItem2(
      {this.uSRId,
        this.loginId,
        this.password,
        this.name,
        this.gender,
        this.dOB,
        this.address,
        this.landmark,
        this.city,
        this.sTTId,
        this.state,
        this.cNTId,
        this.country,
        this.pincode,
        this.phone,
        this.mobile,
        this.emailId,
        this.cusUniqueId,
        this.image,
        this.mIName,
        this.mIPassword});

  MItem2.fromJson(Map<String, dynamic> json) {
    uSRId = json['USRId'];
    loginId = json['LoginId'];
    password = json['Password'];
    name = json['Name'];
    gender = json['Gender'];
    dOB = json['DOB'];
    address = json['Address'];
    landmark = json['Landmark'];
    city = json['City'];
    sTTId = json['STTId'];
    state = json['State'];
    cNTId = json['CNTId'];
    country = json['Country'];
    pincode = json['Pincode'];
    phone = json['Phone'];
    mobile = json['Mobile'];
    emailId = json['EmailId'];
    cusUniqueId = json['CusUniqueId'];
    image = json['Image'];
    mIName = json['MIName'];
    mIPassword = json['MIPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USRId'] = uSRId;
    data['LoginId'] = loginId;
    data['Password'] = password;
    data['Name'] = name;
    data['Gender'] = gender;
    data['DOB'] = dOB;
    data['Address'] = address;
    data['Landmark'] = landmark;
    data['City'] = city;
    data['STTId'] = sTTId;
    data['State'] = state;
    data['CNTId'] = cNTId;
    data['Country'] = country;
    data['Pincode'] = pincode;
    data['Phone'] = phone;
    data['Mobile'] = mobile;
    data['EmailId'] = emailId;
    data['CusUniqueId'] = cusUniqueId;
    data['Image'] = image;
    data['MIName'] = mIName;
    data['MIPassword'] = mIPassword;
    return data;
  }
}