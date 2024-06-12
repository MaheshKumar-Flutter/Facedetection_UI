class GetOrderDetailModel {
  List<PurchaseOrder>? purchaseOrder;
  List<ProductItemDetail>? productItemDetail;
  List<PickUpAddress>? pickUpAddress;
  List<ReceiveUserAddress>? receiveUserAddress;
  List<ReceiveUserAddress>? receiveUserAddress1;

  GetOrderDetailModel(
      {this.purchaseOrder, this.productItemDetail, this.pickUpAddress, this.receiveUserAddress, this.receiveUserAddress1});

  GetOrderDetailModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      purchaseOrder = <PurchaseOrder>[];
      json['m_Item1'].forEach((v) {
        purchaseOrder!.add(PurchaseOrder.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      productItemDetail = <ProductItemDetail>[];
      json['m_Item2'].forEach((v) {
        productItemDetail!.add(ProductItemDetail.fromJson(v));
      });
    }
    if (json['m_Item3'] != null) {
      pickUpAddress = <PickUpAddress>[];
      json['m_Item3'].forEach((v) {
        pickUpAddress!.add(PickUpAddress.fromJson(v));
      });
    }
    if (json['m_Item4'] != null) {
      receiveUserAddress = <ReceiveUserAddress>[];
      json['m_Item4'].forEach((v) {
        receiveUserAddress!.add(ReceiveUserAddress.fromJson(v));
      });
    }
    if (json['m_Item5'] != null) {
      receiveUserAddress1 = <ReceiveUserAddress>[];
      json['m_Item5'].forEach((v) {
        receiveUserAddress1!.add(ReceiveUserAddress.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (purchaseOrder != null) {
      data['m_Item1'] = purchaseOrder!.map((v) => v.toJson()).toList();
    }
    if (productItemDetail != null) {
      data['m_Item2'] = productItemDetail!.map((v) => v.toJson()).toList();
    }
    if (pickUpAddress != null) {
      data['m_Item3'] = pickUpAddress!.map((v) => v.toJson()).toList();
    }
    if (receiveUserAddress != null) {
      data['m_Item4'] = receiveUserAddress!.map((v) => v.toJson()).toList();
    }
    if (receiveUserAddress1 != null) {
      data['m_Item5'] = receiveUserAddress1!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PurchaseOrder {
  String? userName;
  String? userEmailId;
  String? userMobile;
  String? date;
  String? oDRNo;
  String? pDTCount;
  String? qty;
  String? sellingPrice;
  String? offer;
  String? totalPrice;
  String? shippingPrice;
  String? netPrice;
  String? promoPrice;
  String? amount;
  String? paymentMode;
  String? mIName;
  String? outlet;
  String? outletAddress;
  String? outletMobileNo;
  String? outletGSTNo;

  PurchaseOrder(
      {this.userName,
        this.userEmailId,
        this.userMobile,
        this.date,
        this.oDRNo,
        this.pDTCount,
        this.qty,
        this.sellingPrice,
        this.offer,
        this.totalPrice,
        this.shippingPrice,
        this.netPrice,
        this.promoPrice,
        this.amount,
        this.paymentMode,
        this.mIName,
        this.outlet,
        this.outletAddress,
        this.outletMobileNo,
        this.outletGSTNo});

  PurchaseOrder.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    userEmailId = json['UserEmailId'];
    userMobile = json['UserMobile'];
    date = json['Date'];
    oDRNo = json['ODRNo'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    sellingPrice = json['SellingPrice'];
    offer = json['Offer'];
    totalPrice = json['TotalPrice'];
    shippingPrice = json['ShippingPrice'];
    netPrice = json['NetPrice'];
    promoPrice = json['PromoPrice'];
    amount = json['Amount'];
    paymentMode = json['PaymentMode'];
    mIName = json['MIName'];
    outlet = json['Outlet'];
    outletAddress = json['OutletAddress'];
    outletMobileNo = json['OutletMobileNo'];
    outletGSTNo = json['OutletGSTNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserName'] = userName;
    data['UserEmailId'] = userEmailId;
    data['UserMobile'] = userMobile;
    data['Date'] = date;
    data['ODRNo'] = oDRNo;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['SellingPrice'] = sellingPrice;
    data['Offer'] = offer;
    data['TotalPrice'] = totalPrice;
    data['ShippingPrice'] = shippingPrice;
    data['NetPrice'] = netPrice;
    data['PromoPrice'] = promoPrice;
    data['Amount'] = amount;
    data['PaymentMode'] = paymentMode;
    data['MIName'] = mIName;
    data['Outlet'] = outlet;
    data['OutletAddress'] = outletAddress;
    data['OutletMobileNo'] = outletMobileNo;
    data['OutletGSTNo'] = outletGSTNo;
    return data;
  }
}

class ProductItemDetail {
  String? slNo;
  String? oPId;
  String? product;
  String? color;
  String? size;
  String? qty;
  String? sellingPrice;
  String? offer;
  String? promoOffer;
  String? totalPrice;
  String? shippingPrice;
  String? netPrice;
  String? status;

  ProductItemDetail(
      {this.slNo,
        this.oPId,
        this.product,
        this.color,
        this.size,
        this.qty,
        this.sellingPrice,
        this.offer,
        this.promoOffer,
        this.totalPrice,
        this.shippingPrice,
        this.netPrice,
        this.status});

  ProductItemDetail.fromJson(Map<String, dynamic> json) {
    slNo = json['SlNo'];
    oPId = json['OPId'];
    product = json['Product'];
    color = json['Color'];
    size = json['Size'];
    qty = json['Qty'];
    sellingPrice = json['SellingPrice'];
    offer = json['Offer'];
    promoOffer = json['PromoOffer'];
    totalPrice = json['TotalPrice'];
    shippingPrice = json['ShippingPrice'];
    netPrice = json['NetPrice'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SlNo'] = slNo;
    data['OPId'] = oPId;
    data['Product'] = product;
    data['Color'] = color;
    data['Size'] = size;
    data['Qty'] = qty;
    data['SellingPrice'] = sellingPrice;
    data['Offer'] = offer;
    data['PromoOffer'] = promoOffer;
    data['TotalPrice'] = totalPrice;
    data['ShippingPrice'] = shippingPrice;
    data['NetPrice'] = netPrice;
    data['Status'] = status;
    return data;
  }
}

class PickUpAddress {
  String? name;
  String? address;
  String? city;
  String? state;
  String? country;
  String? pincode;
  String? phone;
  String? mobile;
  String? landmark;

  PickUpAddress(
      {this.name,
        this.address,
        this.city,
        this.state,
        this.country,
        this.pincode,
        this.phone,
        this.mobile,
        this.landmark});

  PickUpAddress.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    address = json['Address'];
    city = json['City'];
    state = json['State'];
    country = json['Country'];
    pincode = json['Pincode'];
    phone = json['Phone'];
    mobile = json['Mobile'];
    landmark = json['Landmark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Address'] = address;
    data['City'] = city;
    data['State'] = state;
    data['Country'] = country;
    data['Pincode'] = pincode;
    data['Phone'] = phone;
    data['Mobile'] = mobile;
    data['Landmark'] = landmark;
    return data;
  }
}

class ReceiveUserAddress {
  String? name;
  String? address;
  String? landMark;
  String? city;
  String? state;
  String? country;
  String? pincode;
  String? mobile;
  String? landmark;

  ReceiveUserAddress(
      {this.name,
        this.address,
        this.landMark,
        this.city,
        this.state,
        this.country,
        this.pincode,
        this.mobile,
        this.landmark});

  ReceiveUserAddress.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    address = json['Address'];
    landMark = json['LandMark'];
    city = json['City'];
    state = json['State'];
    country = json['Country'];
    pincode = json['Pincode'];
    mobile = json['Mobile'];
    landmark = json['Landmark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Address'] = address;
    data['LandMark'] = landMark;
    data['City'] = city;
    data['State'] = state;
    data['Country'] = country;
    data['Pincode'] = pincode;
    data['Mobile'] = mobile;
    data['Landmark'] = landmark;
    return data;
  }
}