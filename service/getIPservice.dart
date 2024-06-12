import 'package:get_ip_address/get_ip_address.dart';


import '../sublocator.dart';
import 'cacheService.dart';

class GetApiServiceCall {
  final PreferenceService preferenceService = locator<PreferenceService>();
  Future initPlatformState() async {
    dynamic data;
    try {
      var ipAddress = IpAddress(type: RequestType.json);
      data = await ipAddress.getIpAddress();
      print("RETURN DATA${ipAddress.getIpAddress().toString()}");

      print("return value${data.toString()}");
      preferenceService.setIPaddressInfo(data.toString());
      print("saved va;ue${preferenceService.getIPAddress()}");
    } on IpAddressException catch (exception) {
      print(exception.message);
    }
    return data;
  }
}
