class GetOrderHistoryModel {
  List<Order>? mItem1;
  List<OrderProduct>? mItem2;
  List<OrderDispatched>? mItem3;
  List<InvoiceDispatched>? mItem4;
  List<InvoiceDispatched>? mItem5;

  GetOrderHistoryModel(
      {this.mItem1, this.mItem2, this.mItem3, this.mItem4, this.mItem5
      });

  GetOrderHistoryModel.fromJson(Map<String, dynamic> json) {
    if (json['m_Item1'] != null) {
      mItem1 = <Order>[];
      json['m_Item1'].forEach((v) {
        mItem1!.add(Order.fromJson(v));
      });
    }
    if (json['m_Item2'] != null) {
      mItem2 = <OrderProduct>[];
      json['m_Item2'].forEach((v) {
        mItem2!.add(OrderProduct.fromJson(v));
      });
    }
    if (json['m_Item3'] != null) {
      mItem3 = <OrderDispatched>[];
      json['m_Item3'].forEach((v) {
        mItem3!.add(OrderDispatched.fromJson(v));
      });
    }
    if (json['m_Item4'] != null) {
      mItem4 = <InvoiceDispatched>[];
      json['m_Item4'].forEach((v) {
        mItem4!.add(InvoiceDispatched.fromJson(v));
      });
    }
    if (json['m_Item5'] != null) {
      mItem5 = <InvoiceDispatched>[];
      json['m_Item5'].forEach((v) {
        mItem5!.add(InvoiceDispatched.fromJson(v));
      });
   }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (mItem1 != null) {
      data['m_Item1'] = mItem1!.map((v) => v.toJson()).toList();
    }
    if (mItem2 != null) {
      data['m_Item2'] = mItem2!.map((v) => v.toJson()).toList();
    }
    if (mItem3 != null) {
      data['m_Item3'] = mItem3!.map((v) => v.toJson()).toList();
    }
    if (this.mItem4 != null) {
      data['m_Item4'] = this.mItem4!.map((v) => v.toJson()).toList();
    }
    if (this.mItem5 != null) {
      data['m_Item5'] = this.mItem5!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Order {
  String? message;
  String? oDRId;
  String? date;
  String? oDRNo;
  String? pDTCount;
  String? qty;
  String? paymentMode;
  String? offer;
  String? shippingCharge;
  String? promoPrice;
  String? amount;
  String? shippingAddress;
  String? shippingAddress1;
  String? billingAddress;
  String? sLRFlg;
  String? presentStatus;
  String? slNo;
  String? oPId;
  String? oDRId1;
  String? product;
  String? pTId;
  String? type;
  String? color;
  String? colorVRTId;
  String? size;
  String? sizeVRTId;
  String? image;
  String? qty1;
  String? offer1;
  String? promoOffer;
  String? netPrice;
  String? sLRFlg1;
  String? dNId;
  String? invoiceNo;
  String? dispatchFrom;
  String? courier;
  String? docketNo;
  String? rTOCourier;
  String? rTODocketNo;
  String? presentDate;
  String? docLinkFlg;
  String? transitLocation;
  String? activity;
  String? eventDate;
  String? nextLocation;
  String? iNVId;
  String? sHPId;

  Order(
      {this.message,
        this.oDRId,
        this.date,
        this.oDRNo,
        this.pDTCount,
        this.qty,
        this.paymentMode,
        this.offer,
        this.shippingCharge,
        this.promoPrice,
        this.amount,
        this.shippingAddress,
        this.shippingAddress1,
        this.billingAddress,
        this.sLRFlg,
        this.presentStatus,
        this.slNo,
        this.oPId,
        this.oDRId1,
        this.product,
        this.pTId,
        this.type,
        this.color,
        this.colorVRTId,
        this.size,
        this.sizeVRTId,
        this.image,
        this.qty1,
        this.offer1,
        this.promoOffer,
        this.netPrice,
        this.sLRFlg1,
        this.dNId,
        this.invoiceNo,
        this.dispatchFrom,
        this.courier,
        this.docketNo,
        this.rTOCourier,
        this.rTODocketNo,
        this.presentDate,
        this.docLinkFlg,
        this.transitLocation,
        this.activity,
        this.eventDate,
        this.nextLocation,
        this.iNVId,
        this.sHPId});

  Order.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    oDRId = json['ODRId'];
    date = json['Date'];
    oDRNo = json['ODRNo'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    paymentMode = json['PaymentMode'];
    offer = json['Offer'];
    shippingCharge = json['ShippingCharge'];
    promoPrice = json['PromoPrice'];
    amount = json['Amount'];
    shippingAddress = json['ShippingAddress'];
    shippingAddress1 = json['ShippingAddress1'];
    billingAddress = json['BillingAddress'];
    sLRFlg = json['SLRFlg'];
    presentStatus = json['PresentStatus'];
    slNo = json['SlNo'];
    oPId = json['OPId'];
    oDRId1 = json['ODRId1'];
    product = json['Product'];
    pTId = json['PTId'];
    type = json['Type'];
    color = json['Color'];
    colorVRTId = json['ColorVRTId'];
    size = json['Size'];
    sizeVRTId = json['SizeVRTId'];
    image = json['Image'];
    qty1 = json['Qty1'];
    offer1 = json['Offer1'];
    promoOffer = json['PromoOffer'];
    netPrice = json['NetPrice'];
    sLRFlg1 = json['SLRFlg1'];
    dNId = json['DNId'];
    invoiceNo = json['InvoiceNo'];
    dispatchFrom = json['DispatchFrom'];
    courier = json['Courier'];
    docketNo = json['DocketNo'];
    rTOCourier = json['RTOCourier'];
    rTODocketNo = json['RTODocketNo'];
    presentDate = json['PresentDate'];
    docLinkFlg = json['DocLinkFlg'];
    transitLocation = json['TransitLocation'];
    activity = json['Activity'];
    eventDate = json['EventDate'];
    nextLocation = json['NextLocation'];
    iNVId = json['INVId'];
    sHPId = json['SHPId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    data['ODRId'] = oDRId;
    data['Date'] = date;
    data['ODRNo'] = oDRNo;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['PaymentMode'] = paymentMode;
    data['Offer'] = offer;
    data['ShippingCharge'] = shippingCharge;
    data['PromoPrice'] = promoPrice;
    data['Amount'] = amount;
    data['ShippingAddress'] = shippingAddress;
    data['ShippingAddress1'] = shippingAddress1;
    data['BillingAddress'] = billingAddress;
    data['SLRFlg'] = sLRFlg;
    data['PresentStatus'] = presentStatus;
    data['SlNo'] = slNo;
    data['OPId'] = oPId;
    data['ODRId1'] = oDRId1;
    data['Product'] = product;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Color'] = color;
    data['ColorVRTId'] = colorVRTId;
    data['Size'] = size;
    data['SizeVRTId'] = sizeVRTId;
    data['Image'] = image;
    data['Qty1'] = qty1;
    data['Offer1'] = offer1;
    data['PromoOffer'] = promoOffer;
    data['NetPrice'] = netPrice;
    data['SLRFlg1'] = sLRFlg1;
    data['DNId'] = dNId;
    data['InvoiceNo'] = invoiceNo;
    data['DispatchFrom'] = dispatchFrom;
    data['Courier'] = courier;
    data['DocketNo'] = docketNo;
    data['RTOCourier'] = rTOCourier;
    data['RTODocketNo'] = rTODocketNo;
    data['PresentDate'] = presentDate;
    data['DocLinkFlg'] = docLinkFlg;
    data['TransitLocation'] = transitLocation;
    data['Activity'] = activity;
    data['EventDate'] = eventDate;
    data['NextLocation'] = nextLocation;
    data['INVId'] = iNVId;
    data['SHPId'] = sHPId;
    return data;
  }
}

class OrderProduct {
  String? message;
  String? oDRId;
  String? date;
  String? oDRNo;
  String? pDTCount;
  String? qty;
  String? paymentMode;
  String? offer;
  String? shippingCharge;
  String? promoPrice;
  String? amount;
  String? shippingAddress;
  String? shippingAddress1;
  String? billingAddress;
  String? sLRFlg;
  String? presentStatus;
  String? slNo;
  String? oPId;
  String? oDRId1;
  String? product;
  String? pTId;
  String? type;
  String? color;
  String? colorVRTId;
  String? size;
  String? sizeVRTId;
  String? image;
  String? qty1;
  String? offer1;
  String? promoOffer;
  String? netPrice;
  String? sLRFlg1;
  String? dNId;
  String? invoiceNo;
  String? dispatchFrom;
  String? courier;
  String? docketNo;
  String? rTOCourier;
  String? rTODocketNo;
  String? presentDate;
  String? docLinkFlg;
  String? transitLocation;
  String? activity;
  String? eventDate;
  String? nextLocation;
  String? iNVId;
  String? sHPId;

  OrderProduct(
      {this.message,
        this.oDRId,
        this.date,
        this.oDRNo,
        this.pDTCount,
        this.qty,
        this.paymentMode,
        this.offer,
        this.shippingCharge,
        this.promoPrice,
        this.amount,
        this.shippingAddress,
        this.shippingAddress1,
        this.billingAddress,
        this.sLRFlg,
        this.presentStatus,
        this.slNo,
        this.oPId,
        this.oDRId1,
        this.product,
        this.pTId,
        this.type,
        this.color,
        this.colorVRTId,
        this.size,
        this.sizeVRTId,
        this.image,
        this.qty1,
        this.offer1,
        this.promoOffer,
        this.netPrice,
        this.sLRFlg1,
        this.dNId,
        this.invoiceNo,
        this.dispatchFrom,
        this.courier,
        this.docketNo,
        this.rTOCourier,
        this.rTODocketNo,
        this.presentDate,
        this.docLinkFlg,
        this.transitLocation,
        this.activity,
        this.eventDate,
        this.nextLocation,
        this.iNVId,
        this.sHPId});

  OrderProduct.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    oDRId = json['ODRId'];
    date = json['Date'];
    oDRNo = json['ODRNo'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    paymentMode = json['PaymentMode'];
    offer = json['Offer'];
    shippingCharge = json['ShippingCharge'];
    promoPrice = json['PromoPrice'];
    amount = json['Amount'];
    shippingAddress = json['ShippingAddress'];
    shippingAddress1 = json['ShippingAddress1'];
    billingAddress = json['BillingAddress'];
    sLRFlg = json['SLRFlg'];
    presentStatus = json['PresentStatus'];
    slNo = json['SlNo'];
    oPId = json['OPId'];
    oDRId1 = json['ODRId1'];
    product = json['Product'];
    pTId = json['PTId'];
    type = json['Type'];
    color = json['Color'];
    colorVRTId = json['ColorVRTId'];
    size = json['Size'];
    sizeVRTId = json['SizeVRTId'];
    image = json['Image'];
    qty1 = json['Qty1'];
    offer1 = json['Offer1'];
    promoOffer = json['PromoOffer'];
    netPrice = json['NetPrice'];
    sLRFlg1 = json['SLRFlg1'];
    dNId = json['DNId'];
    invoiceNo = json['InvoiceNo'];
    dispatchFrom = json['DispatchFrom'];
    courier = json['Courier'];
    docketNo = json['DocketNo'];
    rTOCourier = json['RTOCourier'];
    rTODocketNo = json['RTODocketNo'];
    presentDate = json['PresentDate'];
    docLinkFlg = json['DocLinkFlg'];
    transitLocation = json['TransitLocation'];
    activity = json['Activity'];
    eventDate = json['EventDate'];
    nextLocation = json['NextLocation'];
    iNVId = json['INVId'];
    sHPId = json['SHPId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    data['ODRId'] = oDRId;
    data['Date'] = date;
    data['ODRNo'] = oDRNo;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['PaymentMode'] = paymentMode;
    data['Offer'] = offer;
    data['ShippingCharge'] = shippingCharge;
    data['PromoPrice'] = promoPrice;
    data['Amount'] = amount;
    data['ShippingAddress'] = shippingAddress;
    data['ShippingAddress1'] = shippingAddress1;
    data['BillingAddress'] = billingAddress;
    data['SLRFlg'] = sLRFlg;
    data['PresentStatus'] = presentStatus;
    data['SlNo'] = slNo;
    data['OPId'] = oPId;
    data['ODRId1'] = oDRId1;
    data['Product'] = product;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Color'] = color;
    data['ColorVRTId'] = colorVRTId;
    data['Size'] = size;
    data['SizeVRTId'] = sizeVRTId;
    data['Image'] = image;
    data['Qty1'] = qty1;
    data['Offer1'] = offer1;
    data['PromoOffer'] = promoOffer;
    data['NetPrice'] = netPrice;
    data['SLRFlg1'] = sLRFlg1;
    data['DNId'] = dNId;
    data['InvoiceNo'] = invoiceNo;
    data['DispatchFrom'] = dispatchFrom;
    data['Courier'] = courier;
    data['DocketNo'] = docketNo;
    data['RTOCourier'] = rTOCourier;
    data['RTODocketNo'] = rTODocketNo;
    data['PresentDate'] = presentDate;
    data['DocLinkFlg'] = docLinkFlg;
    data['TransitLocation'] = transitLocation;
    data['Activity'] = activity;
    data['EventDate'] = eventDate;
    data['NextLocation'] = nextLocation;
    data['INVId'] = iNVId;
    data['SHPId'] = sHPId;
    return data;
  }
}

class OrderDispatched {
  String? message;
  String? oDRId;
  String? date;
  String? oDRNo;
  String? pDTCount;
  String? qty;
  String? paymentMode;
  String? offer;
  String? shippingCharge;
  String? promoPrice;
  String? amount;
  String? shippingAddress;
  String? shippingAddress1;
  String? billingAddress;
  String? sLRFlg;
  String? presentStatus;
  String? slNo;
  String? oPId;
  String? oDRId1;
  String? product;
  String? pTId;
  String? type;
  String? color;
  String? colorVRTId;
  String? size;
  String? sizeVRTId;
  String? image;
  String? qty1;
  String? offer1;
  String? promoOffer;
  String? netPrice;
  String? sLRFlg1;
  String? dNId;
  String? invoiceNo;
  String? dispatchFrom;
  String? courier;
  String? docketNo;
  String? rTOCourier;
  String? rTODocketNo;
  String? presentDate;
  String? docLinkFlg;
  String? transitLocation;
  String? activity;
  String? eventDate;
  String? nextLocation;
  String? iNVId;
  String? sHPId;

  OrderDispatched(
      {this.message,
        this.oDRId,
        this.date,
        this.oDRNo,
        this.pDTCount,
        this.qty,
        this.paymentMode,
        this.offer,
        this.shippingCharge,
        this.promoPrice,
        this.amount,
        this.shippingAddress,
        this.shippingAddress1,
        this.billingAddress,
        this.sLRFlg,
        this.presentStatus,
        this.slNo,
        this.oPId,
        this.oDRId1,
        this.product,
        this.pTId,
        this.type,
        this.color,
        this.colorVRTId,
        this.size,
        this.sizeVRTId,
        this.image,
        this.qty1,
        this.offer1,
        this.promoOffer,
        this.netPrice,
        this.sLRFlg1,
        this.dNId,
        this.invoiceNo,
        this.dispatchFrom,
        this.courier,
        this.docketNo,
        this.rTOCourier,
        this.rTODocketNo,
        this.presentDate,
        this.docLinkFlg,
        this.transitLocation,
        this.activity,
        this.eventDate,
        this.nextLocation,
        this.iNVId,
        this.sHPId});

  OrderDispatched.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    oDRId = json['ODRId'];
    date = json['Date'];
    oDRNo = json['ODRNo'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    paymentMode = json['PaymentMode'];
    offer = json['Offer'];
    shippingCharge = json['ShippingCharge'];
    promoPrice = json['PromoPrice'];
    amount = json['Amount'];
    shippingAddress = json['ShippingAddress'];
    shippingAddress1 = json['ShippingAddress1'];
    billingAddress = json['BillingAddress'];
    sLRFlg = json['SLRFlg'];
    presentStatus = json['PresentStatus'];
    slNo = json['SlNo'];
    oPId = json['OPId'];
    oDRId1 = json['ODRId1'];
    product = json['Product'];
    pTId = json['PTId'];
    type = json['Type'];
    color = json['Color'];
    colorVRTId = json['ColorVRTId'];
    size = json['Size'];
    sizeVRTId = json['SizeVRTId'];
    image = json['Image'];
    qty1 = json['Qty1'];
    offer1 = json['Offer1'];
    promoOffer = json['PromoOffer'];
    netPrice = json['NetPrice'];
    sLRFlg1 = json['SLRFlg1'];
    dNId = json['DNId'];
    invoiceNo = json['InvoiceNo'];
    dispatchFrom = json['DispatchFrom'];
    courier = json['Courier'];
    docketNo = json['DocketNo'];
    rTOCourier = json['RTOCourier'];
    rTODocketNo = json['RTODocketNo'];
    presentDate = json['PresentDate'];
    docLinkFlg = json['DocLinkFlg'];
    transitLocation = json['TransitLocation'];
    activity = json['Activity'];
    eventDate = json['EventDate'];
    nextLocation = json['NextLocation'];
    iNVId = json['INVId'];
    sHPId = json['SHPId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    data['ODRId'] = oDRId;
    data['Date'] = date;
    data['ODRNo'] = oDRNo;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['PaymentMode'] = paymentMode;
    data['Offer'] = offer;
    data['ShippingCharge'] = shippingCharge;
    data['PromoPrice'] = promoPrice;
    data['Amount'] = amount;
    data['ShippingAddress'] = shippingAddress;
    data['ShippingAddress1'] = shippingAddress1;
    data['BillingAddress'] = billingAddress;
    data['SLRFlg'] = sLRFlg;
    data['PresentStatus'] = presentStatus;
    data['SlNo'] = slNo;
    data['OPId'] = oPId;
    data['ODRId1'] = oDRId1;
    data['Product'] = product;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Color'] = color;
    data['ColorVRTId'] = colorVRTId;
    data['Size'] = size;
    data['SizeVRTId'] = sizeVRTId;
    data['Image'] = image;
    data['Qty1'] = qty1;
    data['Offer1'] = offer1;
    data['PromoOffer'] = promoOffer;
    data['NetPrice'] = netPrice;
    data['SLRFlg1'] = sLRFlg1;
    data['DNId'] = dNId;
    data['InvoiceNo'] = invoiceNo;
    data['DispatchFrom'] = dispatchFrom;
    data['Courier'] = courier;
    data['DocketNo'] = docketNo;
    data['RTOCourier'] = rTOCourier;
    data['RTODocketNo'] = rTODocketNo;
    data['PresentDate'] = presentDate;
    data['DocLinkFlg'] = docLinkFlg;
    data['TransitLocation'] = transitLocation;
    data['Activity'] = activity;
    data['EventDate'] = eventDate;
    data['NextLocation'] = nextLocation;
    data['INVId'] = iNVId;
    data['SHPId'] = sHPId;
    return data;
  }
}

class InvoiceDispatched {
  String? message;
  String? oDRId;
  String? date;
  String? oDRNo;
  String? pDTCount;
  String? qty;
  String? paymentMode;
  String? offer;
  String? shippingCharge;
  String? promoPrice;
  String? amount;
  String? shippingAddress;
  String? shippingAddress1;
  String? billingAddress;
  String? sLRFlg;
  String? presentStatus;
  String? slNo;
  String? oPId;
  String? oDRId1;
  String? product;
  String? pTId;
  String? type;
  String? color;
  String? colorVRTId;
  String? size;
  String? sizeVRTId;
  String? image;
  String? qty1;
  String? offer1;
  String? promoOffer;
  String? netPrice;
  String? sLRFlg1;
  String? dNId;
  String? invoiceNo;
  String? dispatchFrom;
  String? courier;
  String? docketNo;
  String? rTOCourier;
  String? rTODocketNo;
  String? presentDate;
  String? docLinkFlg;
  String? transitLocation;
  String? activity;
  String? eventDate;
  String? nextLocation;
  String? iNVId;
  String? sHPId;

  InvoiceDispatched(
      {this.message,
        this.oDRId,
        this.date,
        this.oDRNo,
        this.pDTCount,
        this.qty,
        this.paymentMode,
        this.offer,
        this.shippingCharge,
        this.promoPrice,
        this.amount,
        this.shippingAddress,
        this.shippingAddress1,
        this.billingAddress,
        this.sLRFlg,
        this.presentStatus,
        this.slNo,
        this.oPId,
        this.oDRId1,
        this.product,
        this.pTId,
        this.type,
        this.color,
        this.colorVRTId,
        this.size,
        this.sizeVRTId,
        this.image,
        this.qty1,
        this.offer1,
        this.promoOffer,
        this.netPrice,
        this.sLRFlg1,
        this.dNId,
        this.invoiceNo,
        this.dispatchFrom,
        this.courier,
        this.docketNo,
        this.rTOCourier,
        this.rTODocketNo,
        this.presentDate,
        this.docLinkFlg,
        this.transitLocation,
        this.activity,
        this.eventDate,
        this.nextLocation,
        this.iNVId,
        this.sHPId});

  InvoiceDispatched.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    oDRId = json['ODRId'];
    date = json['Date'];
    oDRNo = json['ODRNo'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    paymentMode = json['PaymentMode'];
    offer = json['Offer'];
    shippingCharge = json['ShippingCharge'];
    promoPrice = json['PromoPrice'];
    amount = json['Amount'];
    shippingAddress = json['ShippingAddress'];
    shippingAddress1 = json['ShippingAddress1'];
    billingAddress = json['BillingAddress'];
    sLRFlg = json['SLRFlg'];
    presentStatus = json['PresentStatus'];
    slNo = json['SlNo'];
    oPId = json['OPId'];
    oDRId1 = json['ODRId1'];
    product = json['Product'];
    pTId = json['PTId'];
    type = json['Type'];
    color = json['Color'];
    colorVRTId = json['ColorVRTId'];
    size = json['Size'];
    sizeVRTId = json['SizeVRTId'];
    image = json['Image'];
    qty1 = json['Qty1'];
    offer1 = json['Offer1'];
    promoOffer = json['PromoOffer'];
    netPrice = json['NetPrice'];
    sLRFlg1 = json['SLRFlg1'];
    dNId = json['DNId'];
    invoiceNo = json['InvoiceNo'];
    dispatchFrom = json['DispatchFrom'];
    courier = json['Courier'];
    docketNo = json['DocketNo'];
    rTOCourier = json['RTOCourier'];
    rTODocketNo = json['RTODocketNo'];
    presentDate = json['PresentDate'];
    docLinkFlg = json['DocLinkFlg'];
    transitLocation = json['TransitLocation'];
    activity = json['Activity'];
    eventDate = json['EventDate'];
    nextLocation = json['NextLocation'];
    iNVId = json['INVId'];
    sHPId = json['SHPId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    data['ODRId'] = oDRId;
    data['Date'] = date;
    data['ODRNo'] = oDRNo;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['PaymentMode'] = paymentMode;
    data['Offer'] = offer;
    data['ShippingCharge'] = shippingCharge;
    data['PromoPrice'] = promoPrice;
    data['Amount'] = amount;
    data['ShippingAddress'] = shippingAddress;
    data['ShippingAddress1'] = shippingAddress1;
    data['BillingAddress'] = billingAddress;
    data['SLRFlg'] = sLRFlg;
    data['PresentStatus'] = presentStatus;
    data['SlNo'] = slNo;
    data['OPId'] = oPId;
    data['ODRId1'] = oDRId1;
    data['Product'] = product;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Color'] = color;
    data['ColorVRTId'] = colorVRTId;
    data['Size'] = size;
    data['SizeVRTId'] = sizeVRTId;
    data['Image'] = image;
    data['Qty1'] = qty1;
    data['Offer1'] = offer1;
    data['PromoOffer'] = promoOffer;
    data['NetPrice'] = netPrice;
    data['SLRFlg1'] = sLRFlg1;
    data['DNId'] = dNId;
    data['InvoiceNo'] = invoiceNo;
    data['DispatchFrom'] = dispatchFrom;
    data['Courier'] = courier;
    data['DocketNo'] = docketNo;
    data['RTOCourier'] = rTOCourier;
    data['RTODocketNo'] = rTODocketNo;
    data['PresentDate'] = presentDate;
    data['DocLinkFlg'] = docLinkFlg;
    data['TransitLocation'] = transitLocation;
    data['Activity'] = activity;
    data['EventDate'] = eventDate;
    data['NextLocation'] = nextLocation;
    data['INVId'] = iNVId;
    data['SHPId'] = sHPId;
    return data;
  }
}