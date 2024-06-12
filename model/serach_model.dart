class SearchListModel {
  List<SearchModel>? myList = [];
  SearchListModel({this.myList});
  factory SearchListModel.fromJson(List<dynamic> parsedJson) {
    return SearchListModel(
        myList: parsedJson.map((e) => SearchModel.fromJson(e)).toList());
  }
}



class SearchModel {
  String? type;
  String? id;
  String? name;
  String? image;

  SearchModel({this.type, this.id, this.name, this.image});

  SearchModel.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    id = json['Id'];
    name = json['Name'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['Image'] = this.image;
    return data;
  }
}