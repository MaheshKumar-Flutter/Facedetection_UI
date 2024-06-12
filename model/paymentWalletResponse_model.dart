class PaymentWallet {
  DbResult? dbResult;
  List<CouponValidateInfos>? couponValidateInfos;
  List<CreditValues>? creditValues;
  List<CartDetails>? cartDetails;

  PaymentWallet(
      {this.dbResult,
        this.couponValidateInfos,
        this.creditValues,
        this.cartDetails});

  PaymentWallet.fromJson(Map<String, dynamic> json) {
    dbResult = json['DbResult'] != null
        ? DbResult.fromJson(json['DbResult'])
        : null;
    if (json['couponValidateInfos'] != null) {
      couponValidateInfos = <CouponValidateInfos>[];
      json['couponValidateInfos'].forEach((v) {
        couponValidateInfos!.add(CouponValidateInfos.fromJson(v));
      });
    }
    if (json['CreditValues'] != null) {
      creditValues = <CreditValues>[];
      json['CreditValues'].forEach((v) {
        creditValues!.add(CreditValues.fromJson(v));
      });
    }
    if (json['CartDetails'] != null) {
      cartDetails = <CartDetails>[];
      json['CartDetails'].forEach((v) {
        cartDetails!.add(CartDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dbResult != null) {
      data['DbResult'] = dbResult!.toJson();
    }
    if (couponValidateInfos != null) {
      data['couponValidateInfos'] =
          couponValidateInfos!.map((v) => v.toJson()).toList();
    }
    if (creditValues != null) {
      data['CreditValues'] = creditValues!.map((v) => v.toJson()).toList();
    }
    if (cartDetails != null) {
      data['CartDetails'] = cartDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DbResult {
  int? rDId;
  bool? redirect;
  double? walletAmount;
  double? cartAmount;
  double? cashAmount;
  double? cNAmount;
  double? remaining;
  double? discount;
  double? grossTotal;
  double? netPrice;
  double? amountPayable;
  String? mIID;
  String? invoiceNo;
  int? oDRId;
  bool? isWallet;
  bool? isOnline;
  bool? isSessionTimeOut;
  String? message;
  bool? clear;
  int? rOId;
  String? oTP;
  bool? reOTP;
  int? deliveryMode;
  String? mIId;
  bool? addressFlag;

  DbResult(
      {this.rDId,
        this.redirect,
        this.walletAmount,
        this.cartAmount,
        this.cashAmount,
        this.cNAmount,
        this.remaining,
        this.discount,
        this.grossTotal,
        this.netPrice,
        this.amountPayable,
        this.mIID,
        this.invoiceNo,
        this.oDRId,
        this.isWallet,
        this.isOnline,
        this.isSessionTimeOut,
        this.message,
        this.clear,
        this.rOId,
        this.oTP,
        this.reOTP,
        this.deliveryMode,
        this.mIId,
        this.addressFlag});

  DbResult.fromJson(Map<String, dynamic> json) {
    rDId = json['RDId'];
    redirect = json['Redirect'];
    walletAmount = json['WalletAmount'];
    cartAmount = json['CartAmount'];
    cashAmount = json['CashAmount'];
    cNAmount = json['CNAmount'];
    remaining = json['Remaining'];
    discount = json['Discount'];
    grossTotal = json['GrossTotal'];
    netPrice = json['NetPrice'];
    amountPayable = json['AmountPayable'];
    mIID = json['MIID'];
    invoiceNo = json['InvoiceNo'];
    oDRId = json['ODRId'];
    isWallet = json['IsWallet'];
    isOnline = json['IsOnline'];
    isSessionTimeOut = json['IsSessionTimeOut'];
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
    data['RDId'] = rDId;
    data['Redirect'] = redirect;
    data['WalletAmount'] = walletAmount;
    data['CartAmount'] = cartAmount;
    data['CashAmount'] = cashAmount;
    data['CNAmount'] = cNAmount;
    data['Remaining'] = remaining;
    data['Discount'] = discount;
    data['GrossTotal'] = grossTotal;
    data['NetPrice'] = netPrice;
    data['AmountPayable'] = amountPayable;
    data['MIID'] = mIID;
    data['InvoiceNo'] = invoiceNo;
    data['ODRId'] = oDRId;
    data['IsWallet'] = isWallet;
    data['IsOnline'] = isOnline;
    data['IsSessionTimeOut'] = isSessionTimeOut;
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

class CouponValidateInfos {
  int? privilegeType;
  String? privilegeName;
  double? balance;

  CouponValidateInfos({this.privilegeType, this.privilegeName, this.balance});

  CouponValidateInfos.fromJson(Map<String, dynamic> json) {
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

class CreditValues {
  String? cREDITNOTEID;
  double? cNValue;

  CreditValues({this.cREDITNOTEID, this.cNValue});

  CreditValues.fromJson(Map<String, dynamic> json) {
    cREDITNOTEID = json['CREDITNOTEID'];
    cNValue = json['CNValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CREDITNOTEID'] = cREDITNOTEID;
    data['CNValue'] = cNValue;
    return data;
  }
}

class CartDetails {
  int? itemId;
  int? cartProductId;
  String? itemName;
  String? iSCode;
  String? hSNCode;
  int? privilegeType;
  String? privilegeName;
  double? rSPPPrice;
  double? mRPPrice;
  double? rate;
  int? qty;
  double? amount;
  double? taxableAmount;
  int? discount;
  double? discountPercentage;
  double? itemDiscountAmount;
  double? taxAmount;
  double? taxPrecentage;
  String? imagePath;

  CartDetails(
      {this.itemId,
        this.cartProductId,
        this.itemName,
        this.iSCode,
        this.hSNCode,
        this.privilegeType,
        this.privilegeName,
        this.rSPPPrice,
        this.mRPPrice,
        this.rate,
        this.qty,
        this.amount,
        this.taxableAmount,
        this.discount,
        this.discountPercentage,
        this.itemDiscountAmount,
        this.taxAmount,
        this.taxPrecentage,
        this.imagePath});

  CartDetails.fromJson(Map<String, dynamic> json) {
    itemId = json['ItemId'];
    cartProductId = json['CartProductId'];
    itemName = json['ItemName'];
    iSCode = json['ISCode'];
    hSNCode = json['HSNCode'];
    privilegeType = json['PrivilegeType'];
    privilegeName = json['PrivilegeName'];
    rSPPPrice = json['RSPPPrice'];
    mRPPrice = json['MRPPrice'];
    rate = json['Rate'];
    qty = json['Qty'];
    amount = json['Amount'];
    taxableAmount = json['TaxableAmount'];
    discount = json['Discount'];
    discountPercentage = json['DiscountPercentage'];
    itemDiscountAmount = json['ItemDiscountAmount'];
    taxAmount = json['TaxAmount'];
    taxPrecentage = json['TaxPrecentage'];
    imagePath = json['ImagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ItemId'] = itemId;
    data['CartProductId'] = cartProductId;
    data['ItemName'] = itemName;
    data['ISCode'] = iSCode;
    data['HSNCode'] = hSNCode;
    data['PrivilegeType'] = privilegeType;
    data['PrivilegeName'] = privilegeName;
    data['RSPPPrice'] = rSPPPrice;
    data['MRPPrice'] = mRPPrice;
    data['Rate'] = rate;
    data['Qty'] = qty;
    data['Amount'] = amount;
    data['TaxableAmount'] = taxableAmount;
    data['Discount'] = discount;
    data['DiscountPercentage'] = discountPercentage;
    data['ItemDiscountAmount'] = itemDiscountAmount;
    data['TaxAmount'] = taxAmount;
    data['TaxPrecentage'] = taxPrecentage;
    data['ImagePath'] = imagePath;
    return data;
  }
}