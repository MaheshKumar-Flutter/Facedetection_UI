class GetNotifyList{
 final List<NotifyModel>? notifyModelList;

  const GetNotifyList({this.notifyModelList});

  factory GetNotifyList.fromJson(List<dynamic> json){
    return GetNotifyList(notifyModelList:  json.map((e) => NotifyModel.fromJson(e) ).toList());


  }

}


class NotifyModel {
  String? message;
  String? clear;

  NotifyModel({this.message, this.clear});

  NotifyModel.fromJson(Map<String, dynamic> json) {
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