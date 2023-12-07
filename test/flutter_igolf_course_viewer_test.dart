import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_igolf_course_viewer/flutter_igolf_course_viewer.dart';
import 'package:flutter_igolf_course_viewer/flutter_igolf_course_viewer_platform_interface.dart';
import 'package:flutter_igolf_course_viewer/flutter_igolf_course_viewer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIgolfCourseViewerPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIgolfCourseViewerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIgolfCourseViewerPlatform initialPlatform = FlutterIgolfCourseViewerPlatform.instance;

  test('$MethodChannelFlutterIgolfCourseViewer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIgolfCourseViewer>());
  });

  test('getPlatformVersion', () async {
    FlutterIgolfCourseViewer flutterIgolfCourseViewerPlugin = FlutterIgolfCourseViewer();
    MockFlutterIgolfCourseViewerPlatform fakePlatform = MockFlutterIgolfCourseViewerPlatform();
    FlutterIgolfCourseViewerPlatform.instance = fakePlatform;

    expect(await flutterIgolfCourseViewerPlugin.getPlatformVersion(), '42');
  });
}
