class CustomerListModel {
  DbResult? dbResult;
  List<CustomerDetails>? customerDetails;

  CustomerListModel({this.dbResult, this.customerDetails});

  CustomerListModel.fromJson(Map<String, dynamic> json) {
    dbResult =
        json['DbResult'] != null ? DbResult.fromJson(json['DbResult']) : null;
    if (json['customerDetails'] != null) {
      customerDetails = <CustomerDetails>[];
      json['customerDetails'].forEach((v) {
        customerDetails!.add(CustomerDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dbResult != null) {
      data['DbResult'] = dbResult!.toJson();
    }
    if (customerDetails != null) {
      data['customerDetails'] =
          customerDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DbResult {
  String? message;
  bool? clear;
  int? rOId;
  int? oTP;
  bool? reOTP;
  int? deliveryMode;
  int? mIId;
  bool? addressFlag;

  DbResult(
      {this.message,
      this.clear,
      this.rOId,
      this.oTP,
      this.reOTP,
      this.deliveryMode,
      this.mIId,
      this.addressFlag});

  DbResult.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    clear = json['Clear'];
    rOId = json['ROId'];
    oTP = json['OTP'];
    reOTP = json['ReOTP'];
    deliveryMode = json['DeliveryMode'];
    mIId = json['MIId'];
    addressFlag = json['AddressFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Message'] = message;
    data['Clear'] = clear;
    data['ROId'] = rOId;
    data['OTP'] = oTP;
    data['ReOTP'] = reOTP;
    data['DeliveryMode'] = deliveryMode;
    data['MIId'] = mIId;
    data['AddressFlag'] = addressFlag;
    return data;
  }
}

class CustomerDetails {
  int? customerId;
  int? stateId;
  int? oLTId;
  String? outlet;
  String? customerName;
  String? emailId;
  String? mobileNo;
  String? address;
  String? address1;
  String? address2;
  String? city;
  String? pincode;
  String? gSTNo;
  String? gSTStateCode;
  String? state;
  String? landmark;
  String? doorNo;
  String? apartmentName;
  String? streetName;
  String? area;
  String? outletAddress;
  String? aleternateMobileNo;

  CustomerDetails(
      {this.customerId,
      this.stateId,
      this.oLTId,
      this.outlet,
      this.customerName,
      this.emailId,
      this.mobileNo,
      this.address,
      this.address1,
      this.address2,
      this.city,
      this.pincode,
      this.gSTNo,
      this.gSTStateCode,
      this.state,
      this.landmark,
      this.doorNo,
      this.apartmentName,
      this.streetName,
      this.area,
      this.outletAddress,
      this.aleternateMobileNo});

  CustomerDetails.fromJson(Map<String, dynamic> json) {
    customerId = json['CustomerId'];
    stateId = json['StateId'];
    oLTId = json['OLTId'];
    outlet = json['Outlet'];
    customerName = json['CustomerName'];
    emailId = json['EmailId'];
    mobileNo = json['MobileNo'];
    address = json['Address'];
    address1 = json['Address1'];
    address2 = json['Address2'];
    city = json['City'];
    pincode = json['Pincode'];
    gSTNo = json['GSTNo'];
    gSTStateCode = json['GSTStateCode'];
    state = json['State'];
    landmark = json['Landmark'];
    doorNo = json['DoorNo'];
    apartmentName = json['ApartmentName'];
    streetName = json['StreetName'];
    area = json['Area'];
    outletAddress = json['OutletAddress'];
    aleternateMobileNo = json['AleternateMobileNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CustomerId'] = customerId;
    data['StateId'] = stateId;
    data['OLTId'] = oLTId;
    data['Outlet'] = outlet;
    data['CustomerName'] = customerName;
    data['EmailId'] = emailId;
    data['MobileNo'] = mobileNo;
    data['Address'] = address;
    data['Address1'] = address1;
    data['Address2'] = address2;
    data['City'] = city;
    data['Pincode'] = pincode;
    data['GSTNo'] = gSTNo;
    data['GSTStateCode'] = gSTStateCode;
    data['State'] = state;
    data['Landmark'] = landmark;
    data['DoorNo'] = doorNo;
    data['ApartmentName'] = apartmentName;
    data['StreetName'] = streetName;
    data['Area'] = area;
    data['OutletAddress'] = outletAddress;
    data['AleternateMobileNo'] = aleternateMobileNo;
    return data;
  }
}
