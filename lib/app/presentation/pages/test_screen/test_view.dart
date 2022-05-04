import 'package:core_structure/app/presentation/pages/test_screen/test_controller.dart';
import 'package:core_structure/cores/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestController>(
        init: TestController(), builder: ((ctrl) => Container(
          child: Center(child: Obx((){
            Color _color;
            if (ctrl.testValue.value) {
              _color = AppTheme.blue;
            }
            _color = AppTheme.colorRed;
            return Container(width: 100,height: 100,color: _color,);
          }),),
        )));
  }
}
