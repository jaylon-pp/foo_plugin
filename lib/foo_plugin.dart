
import 'dart:async';

import 'package:flutter/services.dart';

class FooPlugin {
  static const MethodChannel _channel =
      const MethodChannel('foo_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int?> sum(int a, int b) async {
    final int? value = await _channel.invokeMethod('sum', [a, b]);
    return value;
  }
}
