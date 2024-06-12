class StateListModel {
  List<StateModel>? myList = [];
  StateListModel({this.myList});
  factory StateListModel.fromJson(List<dynamic> parsedJson) {
    return StateListModel(
        myList: parsedJson.map((e) => StateModel.fromJson(e)).toList());
  }
}

class StateModel {
  int? sTTId;
  String? name;
  String? city;

  StateModel({this.sTTId, this.name, this.city});

  StateModel.fromJson(Map<String, dynamic> json) {
    sTTId = json['STTId'];
    name = json['Name'];
    city = json['City'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['STTId'] = sTTId;
    data['Name'] = name;
    data['City'] = city;
    return data;
  }
}
