import 'package:core_structure/app/data/local_data/shared_prefences/preferences_storage.dart';
import 'package:core_structure/app/domain/usecases/business_usecase.dart';
import 'package:get/get.dart';

class TestRepository extends GetxController {
  final BusinessUsecases usecases;
  final PreferentStorage storage;

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
