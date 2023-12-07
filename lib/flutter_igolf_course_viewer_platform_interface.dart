import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_igolf_course_viewer_method_channel.dart';

abstract class FlutterIgolfCourseViewerPlatform extends PlatformInterface {
  /// Constructs a FlutterIgolfCourseViewerPlatform.
  FlutterIgolfCourseViewerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIgolfCourseViewerPlatform _instance = MethodChannelFlutterIgolfCourseViewer();

  /// The default instance of [FlutterIgolfCourseViewerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIgolfCourseViewer].
  static FlutterIgolfCourseViewerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIgolfCourseViewerPlatform] when
  /// they register themselves.
  static set instance(FlutterIgolfCourseViewerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
