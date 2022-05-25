import 'package:core_structure/app/data/data_interfaces/local_interfaces.dart';
import 'package:core_structure/app/domain/business_interfaces/business_interfaces.dart';
import 'package:core_structure/app/presentation/view_interfaces/test_viewmodel_interfaces.dart';
import 'package:get/get.dart';

class TestViewModel extends GetxController implements TestViewModelInterfaces {
  final BusinessExampleInterfaces usecases;
  final PreferencesStorageInterfaces storage;

  TestViewModel({required this.storage, required this.usecases});
  RxBool testValue = false.obs;

  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 2));
    testValue.value = await workingExample();
    super.onInit();
  }

  @override
  Future<bool> workingExample() async {
    String? _localData = await storage.getItemExample('test');
    return await usecases.businessExampleBool(_localData);
  }

}
