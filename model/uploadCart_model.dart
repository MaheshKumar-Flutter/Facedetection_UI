class UploadCartModel {
  int? oLTId;
  int? rOId;
  int? customerId;
  int? pDTId;
  int? qty;
  int? rate;
  int? uId;
  String? cRTId;
  bool? delflag;
  int? cPId;
  bool? isPlus;

  UploadCartModel(
      {this.oLTId,
        this.rOId,
        this.customerId,
        this.pDTId,
        this.qty,
        this.rate,
        this.uId,
        this.cRTId,
        this.delflag,
        this.isPlus,
        this.cPId});

  UploadCartModel.fromJson(Map<String, dynamic> json) {
    oLTId = json['OLTId'];
    rOId = json['ROId'];
    customerId = json['CustomerId'];
    pDTId = json['PDTId'];
    qty = json['Qty'];
    rate = json['Rate'];
    uId = json['UId'];
    cRTId = json['CRTId'];
    delflag = json['Delflag'];
    cPId = json['CPId'];
    isPlus = json['IsPlus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OLTId'] = this.oLTId;
    data['ROId'] = this.rOId;
    data['CustomerId'] = this.customerId;
    data['PDTId'] = this.pDTId;
    data['Qty'] = this.qty;
    data['Rate'] = this.rate;
    data['UId'] = this.uId;
    data['CRTId'] = this.cRTId;
    data['Delflag'] = this.delflag;
    data['CPId'] = this.cPId;
    return data;
  }
}