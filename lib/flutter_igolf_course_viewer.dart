
import 'flutter_igolf_course_viewer_platform_interface.dart';

class FlutterIgolfCourseViewer {
  Future<String?> getPlatformVersion() {
    return FlutterIgolfCourseViewerPlatform.instance.getPlatformVersion();
  }
}
