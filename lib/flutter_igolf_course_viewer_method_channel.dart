import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_igolf_course_viewer_platform_interface.dart';

/// An implementation of [FlutterIgolfCourseViewerPlatform] that uses method channels.
class MethodChannelFlutterIgolfCourseViewer extends FlutterIgolfCourseViewerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_igolf_course_viewer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
