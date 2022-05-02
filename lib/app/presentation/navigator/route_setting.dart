import 'package:core_structure/app/presentation/pages/test_screen/test_view.dart';
import 'package:get/get.dart';

import 'route_name.dart';

class RouteSetting {
  static List<GetPage> pages = [
  GetPage(name: RouteName.test_screen, page: () => TestView()),

  ];

}
