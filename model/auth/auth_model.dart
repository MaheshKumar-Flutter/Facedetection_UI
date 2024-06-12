class LoginModel {
  List<LoginTable>? mItem1;
  List<LoginTable1>? mItem2;

  LoginModel({this.mItem1, this.mItem2});

  LoginModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <LoginTable>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(LoginTable.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      mItem2 = <LoginTable1>[];
      json['m_Item2'].forEach((v) {
        mItem2!.add(LoginTable1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (mItem1 != null) {
      data['m_Item1'] = mItem1!.map((v) => v.toJson()).toList();
    }
    if (mItem2 != null) {
      data['m_Item2'] = mItem2!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LoginTable {
  String? message;
  String? redirect;
  String? link;
  String? uSRId;
  String? dBRId;
  String? loginId;
  String? name;
  String? mobileNo;
  String? mIId;

  LoginTable(
      {this.message,
      this.redirect,
      this.link,
      this.uSRId,
      this.dBRId,
      this.loginId,
      this.name,
      this.mobileNo,
      this.mIId});

  LoginTable.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    redirect = json['Redirect'];
    link = json['Link'];
    uSRId = json['USRId'];
    dBRId = json['DBRId'];
    loginId = json['LoginId'];
    name = json['Name'];
    mobileNo = json['MobileNo'];
    mIId = json['MIId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Redirect'] = redirect;
    data['Link'] = link;
    data['USRId'] = uSRId;
    data['DBRId'] = dBRId;
    data['LoginId'] = loginId;
    data['Name'] = name;
    data['MobileNo'] = mobileNo;
    data['MIId'] = mIId;
    return data;
  }
}

class LoginTable1 {
  String? message;
  String? redirect;
  String? link;
  String? uSRId;
  String? dBRId;
  String? loginId;
  String? name;
  String? mobileNo;
  String? mIId;

  LoginTable1(
      {this.message,
      this.redirect,
      this.link,
      this.uSRId,
      this.dBRId,
      this.loginId,
      this.name,
      this.mobileNo,
      this.mIId});

  LoginTable1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    redirect = json['Redirect'];
    link = json['Link'];
    uSRId = json['USRId'];
    dBRId = json['DBRId'];
    loginId = json['LoginId'];
    name = json['Name'];
    mobileNo = json['MobileNo'];
    mIId = json['MIId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Redirect'] = redirect;
    data['Link'] = link;
    data['USRId'] = uSRId;
    data['DBRId'] = dBRId;
    data['LoginId'] = loginId;
    data['Name'] = name;
    data['MobileNo'] = mobileNo;
    data['MIId'] = mIId;
    return data;
  }
}
