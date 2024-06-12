class LogoutModel {
  List<Table>? table;
  List<Table>? table1;

  LogoutModel({this.table, this.table1});

  LogoutModel.fromJson(Map<String, dynamic> json) {
    if (json['Table'] != null) {
      table = <Table>[];
      json['Table'].forEach((v) {
        table!.add(new Table.fromJson(v));
      });
    }
    if (json['Table1'] != null) {
      table1 = <Table>[];
      json['Table1'].forEach((v) {
        table1!.add(Table.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.table != null) {
      data['Table'] = this.table!.map((v) => v.toJson()).toList();
    }
    if (this.table1 != null) {
      data['Table1'] = this.table1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Table {
  String? message;
  bool? clear;

  Table({this.message, this.clear});

  Table.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Clear'] = this.clear;
    return data;
  }

  @override
  bool operator ==(dynamic other) =>
      other != null && other is Table && message == other.message;
}
