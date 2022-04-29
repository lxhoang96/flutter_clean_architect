class HandleResponseModel {
  String? message;
  String? code;
  Map? body;

  HandleResponseModel({this.message, this.code, this.body});

  HandleResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    code = json['code'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['code'] = this.code;
    data['body'] = this.body;
  
    return data;
  }
}
