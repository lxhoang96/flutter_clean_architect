import 'package:core_structure/app/data/local_data/shared_prefences/preferences_storage.dart';
import 'package:core_structure/app/domain/usecases/business_usecase.dart';
import 'package:core_structure/cores/app_modules/commons.dart';
import 'package:get/get.dart';

class TestRepository extends GetxController {
  BusinessUsecases _usecases = BusinessUsecases();
  PreferentStorage _storage = PreferentStorage();
  RxBool testValue = false.obs;

  @override
  void onInit() async{
    testValue.value = await _workingExample();
    super.onInit();
  }

  Future<bool> _workingExample() async {
    String? _localData = await _storage.getItemExample('test');
    if (checkStringNull(_localData)) {
      bool result = await _usecases.businessExampleBool(_localData!);
      return result;
    }
    return false;
  }
}
