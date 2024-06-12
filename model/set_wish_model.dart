class SetWishModel {
  List<MItem1>? mItem1;

  SetWishModel({this.mItem1});

  SetWishModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <MItem1>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(new MItem1.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mItem1 != null) {
      data['m_Item1'] = this.mItem1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MItem1 {
  String? message;
  String? clear;

  MItem1({this.message, this.clear});

  MItem1.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    return data;
  }
}