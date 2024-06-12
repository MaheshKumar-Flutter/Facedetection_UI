class SetOrderPostModel {
  int? rOId;
  int? orderMode;
  bool? isCartClear;

  SetOrderPostModel({this.rOId, this.orderMode, this.isCartClear});

  SetOrderPostModel.fromJson(Map<String, dynamic> json) {
    rOId = json['ROId'];
    orderMode = json['OrderMode'];
    isCartClear = json['IsCartClear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ROId'] = this.rOId;
    data['OrderMode'] = this.orderMode;
    data['IsCartClear'] = this.isCartClear;
    return data;
  }
}

