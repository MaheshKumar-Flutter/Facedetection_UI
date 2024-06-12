class ForGotPasswordList{
  List<ForgotPassword>? forGotList = [];
  ForGotPasswordList({this.forGotList});

  factory ForGotPasswordList.fromJson(List<dynamic> json){
    return ForGotPasswordList(forGotList:json.map((e) => ForgotPassword.fromJson(e)).toList() );
  }
}


class ForgotPassword {
  String? message;
  bool? redirect;

  ForgotPassword({this.message, this.redirect});

  ForgotPassword.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    redirect = json['Redirect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Redirect'] = redirect;
    return data;
  }
}