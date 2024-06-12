class SetReviewModel {
  String? clear;
  String? message;

  SetReviewModel({this.clear, this.message});

  SetReviewModel.fromJson(Map<String, dynamic> json) {
    clear = json['Clear'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Clear'] = this.clear;
    data['Message'] = this.message;
    return data;
  }
}