import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Widget build();
  Color color();

  factory PlatformIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return iOSIndicator();
      default:
        return AndroidIndicator();
    }
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }

  @override
  Color color() {
    return Colors.blueAccent;
  }
}

class iOSIndicator implements PlatformIndicator {
  @override
  Widget build() {
    return CupertinoActivityIndicator(color: color());
  }

  @override
  Color color() {
    return Colors.red;
  }
}
