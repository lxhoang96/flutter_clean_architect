import 'package:core_structure/app/data/local_data/shared_prefences/preferences_storage.dart';
import 'package:core_structure/app/domain/usecases/business_usecase.dart';
import 'package:core_structure/app/presentation/pages/test_screen/test_controller.dart';
import 'package:core_structure/app/presentation/pages/test_screen/test_repository.dart';
import 'package:core_structure/app/presentation/pages/test_screen/test_view.dart';
import 'package:get/get.dart';

import 'route_name.dart';

class RouteSetting {
  static List<GetPage> pages = [
    GetPage(
        name: RouteName.test_screen,
        page: () => TestView(),
        binding: TestBinding()),
  ];
}

class TestBinding extends Bindings {
  @override
  void dependencies() {
    PreferentStorage _storage = PreferentStorage();
    BusinessUsecases _usecases = BusinessUsecases();
    TestRepository _repository =
        Get.put(TestRepository(storage: _storage, usecases: _usecases));
    Get.lazyPut(() => TestController(repository: _repository));
  }
}
