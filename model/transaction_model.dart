class TransactionListModel {
  List<TransactionModel>? myList = [];
  TransactionListModel({this.myList});
  factory TransactionListModel.fromJson(List<dynamic> parsedJson) {
    return TransactionListModel(
        myList: parsedJson.map((e) => TransactionModel.fromJson(e)).toList());
  }
}



class TransactionModel {
  int? slNo;
  String? date;
  String? description;
  String? credit;
  String? debit;

  TransactionModel(
      {this.slNo, this.date, this.description, this.credit, this.debit});

  TransactionModel.fromJson(Map<String, dynamic> json) {
    slNo = json['SlNo'];
    date = json['Date'];
    description = json['Description'];
    credit = json['Credit'];
    debit = json['Debit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SlNo'] = this.slNo;
    data['Date'] = this.date;
    data['Description'] = this.description;
    data['Credit'] = this.credit;
    data['Debit'] = this.debit;
    return data;
  }
}