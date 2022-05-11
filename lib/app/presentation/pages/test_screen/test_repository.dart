import 'package:core_structure/app/data/data_interfaces/local_interfaces.dart';
import 'package:core_structure/app/domain/business_interfaces/business_interfaces.dart';
import 'package:get/get.dart';

class TestRepository extends GetxController {
  final BusinessExampleInterfaces usecases;
  final PreferencesStorageInterfaces storage;

  TestRepository({required this.storage, required this.usecases});
  RxBool testValue = false.obs;

  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 2));
    testValue.value = await _workingExample();
    super.onInit();
  }

  Future<bool> _workingExample() async {
    String? _localData = await storage.getItemExample('test');
    return await usecases.businessExampleBool(_localData);
  }
}
