import 'package:core_structure/app/presentation/pages/test_screen/test_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(
        init: TestController(), builder: ((ctrl) => Container()));
  }
}
