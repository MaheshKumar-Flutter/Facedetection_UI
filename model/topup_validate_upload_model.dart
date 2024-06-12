class TopUpValidateUploadModel {
  int? oLTId;
  String? barcode;
  String? mIId;
  int? rOId;
  int? rDId;
  int? uId;

  TopUpValidateUploadModel(
      {this.oLTId, this.barcode, this.mIId, this.rOId, this.rDId, this.uId});

  TopUpValidateUploadModel.fromJson(Map<String, dynamic> json) {
    oLTId = json['OLTId'];
    barcode = json['Barcode'];
    mIId = json['MIId'];
    rOId = json['ROId'];
    rDId = json['RDId'];
    uId = json['UId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OLTId'] = this.oLTId;
    data['Barcode'] = this.barcode;
    data['MIId'] = this.mIId;
    data['ROId'] = this.rOId;
    data['RDId'] = this.rDId;
    data['UId'] = this.uId;
    return data;
  }
}