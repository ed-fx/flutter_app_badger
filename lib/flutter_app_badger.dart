import 'dart:async';

import 'package:flutter/services.dart';

class FlutterAppBadger {
  static const MethodChannel _channel =
      const MethodChannel('g123k/flutter_app_badger');

  static void updateBadgeCount(int count) async {
    await _channel.invokeMethod('updateBadgeCount', {"count": count});
  }

  static void removeBadge() async {
    await _channel.invokeMethod('removeBadge');
  }

  static Future<bool> isAppBadgeSupported() async {
    bool appBadgeSupported = await _channel.invokeMethod('isAppBadgeSupported');
    return appBadgeSupported;
  }
}
