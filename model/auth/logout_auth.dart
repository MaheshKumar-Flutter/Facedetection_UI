class Logout {
  int? status;
  Data? data;
  Error? error;

  Logout({this.status, this.data, this.error});

  Logout.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['error'] = error;
    return data;
  }
}

class Data {
  String? message;
  bool? isSuccess;
  bool? isUnAuthorized;

  Data({this.message, this.isSuccess, this.isUnAuthorized});

  Data.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    isSuccess = json['isSuccess'];
    isUnAuthorized = json['isUnAuthorized'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['isSuccess'] = isSuccess;
    data['isUnAuthorized'] = isUnAuthorized;
    return data;
  }
}
