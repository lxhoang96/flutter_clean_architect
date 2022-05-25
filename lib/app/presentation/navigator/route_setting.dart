import 'package:core_structure/app/data/data_interfaces/local_interfaces.dart';
import 'package:core_structure/app/data/local_data/shared_prefences/preferences_storage.dart';
import 'package:core_structure/app/domain/business_interfaces/business_interfaces.dart';
import 'package:core_structure/app/domain/usecases/business_usecase.dart';
import 'package:core_structure/app/presentation/pages/test_screen/test_controller.dart';
import 'package:core_structure/app/presentation/pages/test_screen/test_viewmodel.dart';
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
    PreferencesStorageInterfaces _storage = PreferentStorage();
    BusinessExampleInterfaces _usecases = BusinessUsecases();
    TestViewModel _viewModel =
        Get.put(TestViewModel(storage: _storage, usecases: _usecases));
    Get.lazyPut(() => TestController(viewModel: _viewModel));
  }
}
