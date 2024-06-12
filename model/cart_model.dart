class GetCartModel {
  CartInfo? cartInfo;
  List<CartProduct>? cartProduct;
  List<CouponInfos>? couponInfos;

  GetCartModel({this.cartInfo, this.cartProduct, this.couponInfos});

  GetCartModel.fromJson(Map<String, dynamic> json) {
    cartInfo =
        json['CartInfo'] != null ? CartInfo.fromJson(json['CartInfo']) : null;
    if (json['CartProduct'] != null) {
      cartProduct = <CartProduct>[];
      json['CartProduct'].forEach((v) {
        cartProduct!.add(CartProduct.fromJson(v));
      });
    }
    if (json['CouponInfos'] != null) {
      couponInfos = <CouponInfos>[];
      json['CouponInfos'].forEach((v) {
        couponInfos!.add(CouponInfos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cartInfo != null) {
      data['CartInfo'] = cartInfo!.toJson();
    }
    if (cartProduct != null) {
      data['CartProduct'] = cartProduct!.map((v) => v.toJson()).toList();
    }
    if (couponInfos != null) {
      data['CouponInfos'] = couponInfos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartInfo {
  int? slNo;
  int? cRTId;
  String? session;
  int? uSRId;
  int? dBRId;
  int? pDTCount;
  int? qty;
  double? actualPrice;
  double? sellingPrice;
  double? offer;
  double? totalPrice;
  var shippingCharge;
  double? netPrice;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  String? promoCode;
  String? promoProduct;
  double? promoPrice;
  double? voucherPrice;
  double? walletPrice;
  double? pGPrice;
  double? amount;
  double? amountPayable;
  double? promoWalletTransfer;
  bool? qtyStatus;
  String? amountSaved;
  int? pincodeFlag;
  String? pincodeMessage;
  int? rDId;
  int? rOId;
  bool? isWallet;
  bool? isOnline;
  bool? isKerala;
  bool? isMRP;
  bool? isSessionTimeOut;
  String? labelCharges;

  CartInfo(
      {this.slNo,
      this.cRTId,
      this.session,
      this.uSRId,
      this.dBRId,
      this.pDTCount,
      this.qty,
      this.actualPrice,
      this.sellingPrice,
      this.offer,
      this.totalPrice,
      this.shippingCharge,
      this.netPrice,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.promoCode,
      this.promoProduct,
      this.promoPrice,
      this.voucherPrice,
      this.walletPrice,
      this.pGPrice,
      this.amount,
      this.amountPayable,
      this.promoWalletTransfer,
      this.qtyStatus,
      this.amountSaved,
      this.pincodeFlag,
      this.pincodeMessage,
      this.rDId,
      this.rOId,
      this.isWallet,
      this.isOnline,
      this.isKerala,
      this.isMRP,
      this.isSessionTimeOut,
      this.labelCharges});

  CartInfo.fromJson(Map<String, dynamic> json) {
    slNo = json['SlNo'];
    cRTId = json['CRTId'];
    session = json['Session'];
    uSRId = json['USRId'];
    dBRId = json['DBRId'];
    pDTCount = json['PDTCount'];
    qty = json['Qty'];
    actualPrice = json['ActualPrice'];
    sellingPrice = json['SellingPrice'];
    offer = json['Offer'];
    totalPrice = json['TotalPrice'];
    shippingCharge = json['ShippingCharge'];
    netPrice = json['NetPrice'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    promoCode = json['PromoCode'];
    promoProduct = json['PromoProduct'];
    promoPrice = json['PromoPrice'];
    voucherPrice = json['VoucherPrice'];
    walletPrice = json['WalletPrice'];
    pGPrice = json['PGPrice'];
    amount = json['Amount'];
    amountPayable = json['AmountPayable'];
    promoWalletTransfer = json['PromoWalletTransfer'];
    qtyStatus = json['QtyStatus'];
    amountSaved = json['AmountSaved'];
    pincodeFlag = json['PincodeFlag'];
    pincodeMessage = json['PincodeMessage'];
    rDId = json['RDId'];
    rOId = json['ROId'];
    isWallet = json['IsWallet'];
    isOnline = json['IsOnline'];
    isKerala = json['IsKerala'];
    isMRP = json['IsMRP'];
    isSessionTimeOut = json['IsSessionTimeOut'];
    labelCharges = json['LabelCharges'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SlNo'] = slNo;
    data['CRTId'] = cRTId;
    data['Session'] = session;
    data['USRId'] = uSRId;
    data['DBRId'] = dBRId;
    data['PDTCount'] = pDTCount;
    data['Qty'] = qty;
    data['ActualPrice'] = actualPrice;
    data['SellingPrice'] = sellingPrice;
    data['Offer'] = offer;
    data['TotalPrice'] = totalPrice;
    data['ShippingCharge'] = shippingCharge;
    data['NetPrice'] = netPrice;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['PromoCode'] = promoCode;
    data['PromoProduct'] = promoProduct;
    data['PromoPrice'] = promoPrice;
    data['VoucherPrice'] = voucherPrice;
    data['WalletPrice'] = walletPrice;
    data['PGPrice'] = pGPrice;
    data['Amount'] = amount;
    data['AmountPayable'] = amountPayable;
    data['PromoWalletTransfer'] = promoWalletTransfer;
    data['QtyStatus'] = qtyStatus;
    data['AmountSaved'] = amountSaved;
    data['PincodeFlag'] = pincodeFlag;
    data['PincodeMessage'] = pincodeMessage;
    data['RDId'] = rDId;
    data['ROId'] = rOId;
    data['IsWallet'] = isWallet;
    data['IsOnline'] = isOnline;
    data['IsKerala'] = isKerala;
    data['IsMRP'] = isMRP;
    data['IsSessionTimeOut'] = isSessionTimeOut;
    data['LabelCharges'] = labelCharges;
    return data;
  }
}

class CartProduct {
  int? slNo;
  int? cPId;
  int? pDTId;
  int? pTId;
  String? type;
  String? product;
  int? colorVRTId;
  String? color;
  int? sizeVRTId;
  String? size;
  String? image;
  String? brand;
  int? qty;
  double? actualPrice;
  double? selingPrice;
  double? offer;
  double? totalPrice;
  var shippingCharge;
  double? netPrice;
  double? promoWalletTransfer;
  int? points;
  int? pV;
  int? bV;
  int? onlyBV;
  bool? sLRFlg;
  int? availableQty;
  bool? stockFlg;
  double? promoOffer;
  bool? delFlag;
  int? wLId;
  double? mRP;
  int? pinCode;
  int? pincodeStock;
  String? pincodeStockDesc;

  CartProduct(
      {this.slNo,
      this.cPId,
      this.pDTId,
      this.pTId,
      this.type,
      this.product,
      this.colorVRTId,
      this.color,
      this.sizeVRTId,
      this.size,
      this.image,
      this.brand,
      this.qty,
      this.actualPrice,
      this.selingPrice,
      this.offer,
      this.totalPrice,
      this.shippingCharge,
      this.netPrice,
      this.promoWalletTransfer,
      this.points,
      this.pV,
      this.bV,
      this.onlyBV,
      this.sLRFlg,
      this.availableQty,
      this.stockFlg,
      this.promoOffer,
      this.delFlag,
      this.wLId,
      this.mRP,
      this.pinCode,
      this.pincodeStock,
      this.pincodeStockDesc});

  CartProduct.fromJson(Map<String, dynamic> json) {
    slNo = json['SlNo'];
    cPId = json['CPId'];
    pDTId = json['PDTId'];
    pTId = json['PTId'];
    type = json['Type'];
    product = json['Product'];
    colorVRTId = json['ColorVRTId'];
    color = json['Color'];
    sizeVRTId = json['SizeVRTId'];
    size = json['Size'];
    image = json['Image'];
    brand = json['Brand'];
    qty = json['Qty'];
    actualPrice = json['ActualPrice'];
    selingPrice = json['SelingPrice'];
    offer = json['Offer'];
    totalPrice = json['TotalPrice'];
    shippingCharge = json['ShippingCharge'];
    netPrice = json['NetPrice'];
    promoWalletTransfer = json['PromoWalletTransfer'];
    points = json['Points'];
    pV = json['PV'];
    bV = json['BV'];
    onlyBV = json['OnlyBV'];
    sLRFlg = json['SLRFlg'];
    availableQty = json['AvailableQty'];
    stockFlg = json['StockFlg'];
    promoOffer = json['PromoOffer'];
    delFlag = json['DelFlag'];
    wLId = json['WLId'];
    mRP = json['MRP'];
    pinCode = json['PinCode'];
    pincodeStock = json['PincodeStock'];
    pincodeStockDesc = json['PincodeStockDesc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['SlNo'] = slNo;
    data['CPId'] = cPId;
    data['PDTId'] = pDTId;
    data['PTId'] = pTId;
    data['Type'] = type;
    data['Product'] = product;
    data['ColorVRTId'] = colorVRTId;
    data['Color'] = color;
    data['SizeVRTId'] = sizeVRTId;
    data['Size'] = size;
    data['Image'] = image;
    data['Brand'] = brand;
    data['Qty'] = qty;
    data['ActualPrice'] = actualPrice;
    data['SelingPrice'] = selingPrice;
    data['Offer'] = offer;
    data['TotalPrice'] = totalPrice;
    data['ShippingCharge'] = shippingCharge;
    data['NetPrice'] = netPrice;
    data['PromoWalletTransfer'] = promoWalletTransfer;
    data['Points'] = points;
    data['PV'] = pV;
    data['BV'] = bV;
    data['OnlyBV'] = onlyBV;
    data['SLRFlg'] = sLRFlg;
    data['AvailableQty'] = availableQty;
    data['StockFlg'] = stockFlg;
    data['PromoOffer'] = promoOffer;
    data['DelFlag'] = delFlag;
    data['WLId'] = wLId;
    data['MRP'] = mRP;
    data['PinCode'] = pinCode;
    data['PincodeStock'] = pincodeStock;
    data['PincodeStockDesc'] = pincodeStockDesc;
    return data;
  }
}

class CouponInfos {
  int? privilegeType;
  String? privilegeName;
  double? balance;

  CouponInfos({this.privilegeType, this.privilegeName, this.balance});

  CouponInfos.fromJson(Map<String, dynamic> json) {
    privilegeType = json['PrivilegeType'];
    privilegeName = json['PrivilegeName'];
    balance = json['Balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['PrivilegeType'] = privilegeType;
    data['PrivilegeName'] = privilegeName;
    data['Balance'] = balance;
    return data;
  }
}
