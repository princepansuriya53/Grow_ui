import 'package:local_auth/local_auth.dart';

class auth {
  static final _authe = LocalAuthentication();

  static Future<bool> canAuthanticat() async =>
      await _authe.canCheckBiometrics || await _authe.isDeviceSupported();

  static Future<bool> authantication() async {
    try {
      if (!await canAuthanticat()) return false;
      {
        return await _authe.authenticate(localizedReason: "Verify Must");
      }
    } catch (e) {
      print("error$e");
      return false;
    }
  }
}
