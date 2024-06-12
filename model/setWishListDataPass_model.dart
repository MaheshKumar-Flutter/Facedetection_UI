class SetWishListDataPassModel {
  String? wLId;
  String? cRTId;
  String? uSRId;
  String? session;
  String? pDTId;
  String? colorId;
  String? sizeId;
  String? delflag;
  String? uId;
  String? mIId;
  String? oLTId;

  SetWishListDataPassModel(
      {this.wLId,
        this.cRTId,
        this.uSRId,
        this.session,
        this.pDTId,
        this.colorId,
        this.sizeId,
        this.delflag,
        this.uId,
        this.mIId,
        this.oLTId});

  SetWishListDataPassModel.fromJson(Map<String, dynamic> json) {
    wLId = json['WLId'];
    cRTId = json['CRTId'];
    uSRId = json['USRId'];
    session = json['Session'];
    pDTId = json['PDTId'];
    colorId = json['ColorId'];
    sizeId = json['SizeId'];
    delflag = json['Delflag'];
    uId = json['UId'];
    mIId = json['MIId'];
    oLTId = json['OLTId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['WLId'] = this.wLId;
    data['CRTId'] = this.cRTId;
    data['USRId'] = this.uSRId;
    data['Session'] = this.session;
    data['PDTId'] = this.pDTId;
    data['ColorId'] = this.colorId;
    data['SizeId'] = this.sizeId;
    data['Delflag'] = this.delflag;
    data['UId'] = this.uId;
    data['MIId'] = this.mIId;
    data['OLTId'] = this.oLTId;
    return data;
  }
}