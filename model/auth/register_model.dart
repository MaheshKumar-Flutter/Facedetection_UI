class RegisterModel {
  List<RegisterModel1>? mItem1;
  List<RegisterModel2>? mItem2;

  RegisterModel({this.mItem1, this.mItem2});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <RegisterModel1>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(RegisterModel1.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      mItem2 = <RegisterModel2>[];
      json['m_Item2'].forEach((v) {
        mItem2!.add(RegisterModel2.fromJson(v));
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

class RegisterModel1 {
  String? message;
  String? clear;
  String? uSRId;
  String? walletNo;
  String? password;

  RegisterModel1({this.message, this.clear, this.uSRId, this.walletNo, this.password});

  RegisterModel1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    uSRId = json['USRId'];
    walletNo = json['WalletNo'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Clear'] = clear;
    data['USRId'] = uSRId;
    data['WalletNo'] = walletNo;
    data['Password'] = password;
    return data;
  }
}

class RegisterModel2 {
  String? message;
  String? clear;
  String? uSRId;
  String? walletNo;
  String? password;

  RegisterModel2({this.message, this.clear, this.uSRId, this.walletNo, this.password});

  RegisterModel2.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    uSRId = json['USRId'];
    walletNo = json['WalletNo'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Clear'] = clear;
    data['USRId'] = uSRId;
    data['WalletNo'] = walletNo;
    data['Password'] = password;
    return data;
  }
}
