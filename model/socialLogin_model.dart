class SocialLogin {
  List<MItem1>? mItem1;
  List<MItem2>? mItem2;

  SocialLogin({this.mItem1, this.mItem2});

  SocialLogin.fromJson(Map<String, dynamic> json) {
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
  String? redirect;

  MItem1({this.message, this.redirect});

  MItem1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    redirect = json['Redirect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Redirect'] = this.redirect;
    return data;
  }
}

class MItem2 {
  String? uSRId;
  String? dBRId;
  String? name;

  MItem2({this.uSRId, this.dBRId, this.name});

  MItem2.fromJson(Map<String, dynamic> json) {
    uSRId = json['USRId'];
    dBRId = json['DBRId'];
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['USRId'] = this.uSRId;
    data['DBRId'] = this.dBRId;
    data['Name'] = this.name;
    return data;
  }
}