import 'package:core_structure/app/presentation/pages/test_screen/test_repository.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestRepository _repository = Get.put(TestRepository());
}
