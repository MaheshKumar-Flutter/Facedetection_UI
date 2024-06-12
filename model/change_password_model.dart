class ChangePasswordModel {
  List<MItem1>? mItem1;
  List<MItem2>? mItem2;

  ChangePasswordModel({this.mItem1, this.mItem2});

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
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
    if (this.mItem1 != null) {
      data['m_Item1'] = this.mItem1!.map((v) => v.toJson()).toList();
    }
    if (this.mItem2 != null) {
      data['m_Item2'] = this.mItem2!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MItem1 {
  String? message;
  String? clear;
  Null? loginId;
  Null? password;
  Null? name;
  Null? emailId;
  Null? mobile;
  Null? date;

  MItem1(
      {this.message,
        this.clear,
        this.loginId,
        this.password,
        this.name,
        this.emailId,
        this.mobile,
        this.date});

  MItem1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    loginId = json['LoginId'];
    password = json['Password'];
    name = json['Name'];
    emailId = json['EmailId'];
    mobile = json['Mobile'];
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    data['LoginId'] = this.loginId;
    data['Password'] = this.password;
    data['Name'] = this.name;
    data['EmailId'] = this.emailId;
    data['Mobile'] = this.mobile;
    data['Date'] = this.date;
    return data;
  }
}

class MItem2 {
  Null? message;
  Null? clear;
  String? loginId;
  String? password;
  String? name;
  String? emailId;
  String? mobile;
  String? date;

  MItem2(
      {this.message,
        this.clear,
        this.loginId,
        this.password,
        this.name,
        this.emailId,
        this.mobile,
        this.date});

  MItem2.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    loginId = json['LoginId'];
    password = json['Password'];
    name = json['Name'];
    emailId = json['EmailId'];
    mobile = json['Mobile'];
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    data['LoginId'] = this.loginId;
    data['Password'] = this.password;
    data['Name'] = this.name;
    data['EmailId'] = this.emailId;
    data['Mobile'] = this.mobile;
    data['Date'] = this.date;
    return data;
  }
}