import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:face_detection/model/customer_list_model.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/auth/auth_model.dart';

class PreferenceService {
  static const String bearerToken = "BEARERTOKEN";
  static const String user = "USER";
  static const String storeTransactionStartData = "STORETRANSACTIONStartDATA";
  static const String storeTransactionEndData = "STORETRANSACTIONEndDATA";
  static const String storePreferenceSessionCode = "STORESessionData";
  static const String storePreferenceSessionOTPCode = "StoreOTPSession";
  static const String storeVideoPlayBackPCode = "VideoPlayBack";
  static const String storeDurationTime = "resentTimerDuration";
  static const String certificateServiceData = "certificateService";
  static const String ipAddress = "ipAddress";
  static const String appleUserName = "APPLEUSERNAME";
  static const String roId = "RO_ID";
  static const String setProfilePic = "ProfilePic";
  static const String appleUserEmail = "APPLEUSEREMAILID";
  static const String auth = "AuthUser";
  static const String customerDetail = "customerDetail";
  static const String cartID = "CARTIDD";
  static const String orderMode = "ORDERMODE";
  static const String miid = "MIID";
  static const String phoneNumber = "NUMBER";

  SharedPreferences? pref;

  init() async {
    pref = await SharedPreferences.getInstance();
  }

  setBearerToken(String value) {
    pref?.setString(bearerToken, value);
    print("getBearerToken()");
    print(getBearerToken());
    debugPrint("Bearer Token stored successfully");
  }

  setTimerDuration(int value) {
    pref?.setInt(storeDurationTime, value);
    debugPrint(" $storeDurationTime stored successfully");
  }

  certificateService(String value) {
    pref?.setString(certificateServiceData, value);
    debugPrint(" $certificateServiceData stored successfully");
  }

  setSessionIndex(int value) {
    pref?.setInt(storePreferenceSessionCode, value);
    debugPrint(" $storePreferenceSessionCode stored successfully");
  }

  setCARTID(int value) {
    pref?.setInt(cartID, value);
    debugPrint("$value stored successfully");
  }

  setSessionIDToken(String value) {
    pref?.setString(storePreferenceSessionCode, value);
    debugPrint(" $storePreferenceSessionCode stored successfully");
  }

  setVideoPlayBackInfo(String value) {
    pref?.setString(storeVideoPlayBackPCode, value);
    debugPrint(" $storeVideoPlayBackPCode stored successfully");
  }

  setProfilePicture(String value) {
    pref?.setString(setProfilePic, value);
    debugPrint(" $setProfilePic stored successfully");
  }

  setOrderModel(int value) {
    pref?.setInt(orderMode, value);
    debugPrint(" $orderMode stored successfully");
  }

  setIPaddressInfo(String value) {
    pref?.setString(ipAddress, value);
    debugPrint(" $ipAddress stored successfully");
  }

  setMIID(String value) {
    pref?.setString(miid, value);
    debugPrint(" $miid stored successfully");
  }

  setPhoneNumber(String value) {
    pref?.setString(phoneNumber, value);
    debugPrint("$value stored successfully");
  }

  setROID(int value) {
    pref?.setInt(roId, value);
    debugPrint("$roId stored successfully");
  }

  setAppleUserMailId(String value) {
    pref?.setString(appleUserEmail, value);
    debugPrint(" $appleUserEmail stored successfully");
  }

  setAppleUserFullName(String value) {
    pref?.setString(appleUserName, value);
    debugPrint(" $appleUserName stored successfully");
  }

  setCustomerDetail(CustomerDetails? value) {
    if (value == null) {
      return;
    }
    pref?.setString(customerDetail, jsonEncode(value.toJson()));
    debugPrint("User $customerDetail stored successfully");
  }

  setDataUser(LoginTable1? value) {
    if (value == null) {
      return;
    }
    pref?.setString(auth, jsonEncode(value.toJson()));
    debugPrint("User stored successfully");
  }

  LoginTable1? getDataUser() {
    String? userString = pref?.getString(auth);
    if (userString == null || userString == "null") {
      return null;
    }
    return LoginTable1.fromJson(jsonDecode(userString));
  }

  CustomerDetails? getCustomerDetail() {
    String? userString = pref?.getString(customerDetail);
    if (userString == null || userString == "null") {
      return null;
    }
    return CustomerDetails.fromJson(jsonDecode(userString));
  }

  int getSessionIndex() {
    return pref?.getInt(storePreferenceSessionCode) ?? 0;
  }

  int getTimerDuration() {
    return pref?.getInt(storeDurationTime) ?? 0;
  }

  int getCARTID() {
    return pref?.getInt(cartID) ?? 0;
  }

  String getSessionPlayBack() {
    return pref?.getString(storeVideoPlayBackPCode) ?? "";
  }

  int getROID() {
    return pref?.getInt(roId) ?? 0;
  }

  setSessionVideoOTPId(String value) {
    pref?.setString(storePreferenceSessionOTPCode, value);
    debugPrint(" $storePreferenceSessionOTPCode stored successfully");
  }

  String getSessionIDToken() {
    return pref?.getString(storePreferenceSessionCode) ?? "";
  }

  String getPhoneNumber() {
    return pref?.getString(phoneNumber) ?? "";
  }

  String getIPAddress() {
    return pref?.getString(ipAddress) ?? "";
  }

  String getSessionVideoOTPId() {
    return pref?.getString(storePreferenceSessionOTPCode) ?? "";
  }

  String getCertificateAssesment() {
    return pref?.getString(certificateServiceData) ?? "";
  }

  String getMIID() {
    return pref?.getString(miid) ?? "";
  }

  String getProfilePic() {
    return pref?.getString(setProfilePic) ?? "";
  }

  String getAppleUserName() {
    return pref?.getString(appleUserName) ?? "";
  }

  String getAppleUserEmail() {
    return pref?.getString(appleUserEmail) ?? "";
  }

  String getBearerToken() {
    return pref?.getString(bearerToken) ?? "";
  }

  int getOrderMode() {
    return pref?.getInt(orderMode) ?? 0;
  }

  // setUser(AuthModel? value) {
  //   if (value == null) {
  //     return;
  //   }
  //   pref?.setString(user, jsonEncode(value.toJson()));
  //   debugPrint("User stored successfully");
  // }
  //
  // AuthModel? getUser() {
  //   String? userString =  pref?.getString(user);
  //   if (userString == null || userString == "null") {
  //     return null;
  //   }
  //   return AuthModel.fromJson(jsonDecode(userString));
  // }

  removeToken() {
    pref?.remove(bearerToken);
  }

  removeUserDetails() {
    pref?.remove(auth);
  }

  removeStoredPlaybackInfo() {
    pref?.remove(storeVideoPlayBackPCode);
  }

  removeCustomerDetails() {
    pref?.remove(customerDetail);
  }

  removeDurationTimer() {
    pref?.remove(storeDurationTime);
  }

  removeStoredVideoOTP() {
    pref?.remove(storePreferenceSessionOTPCode);
  }

  removeProfilePic() {
    pref?.remove(storePreferenceSessionCode);
  }

  removeSessionIndex() {
    pref?.remove(storePreferenceSessionCode);
  }

  removeROID() {
    pref?.remove(roId);
  }

  removePhoneNumber() {
    pref?.remove(phoneNumber);
  }

  removeMIID() {
    pref?.remove(miid);
  }

  removeCARTID() {
    pref?.remove(cartID);
    print("Removed Successfullt");
  }

  removeCertificateCode() {
    pref?.remove(certificateServiceData);
  }

  Future<void> clearData() async {
    await removeToken();
    await removeUserDetails();
  }
}
