import 'package:core_structure/app/domain/business_interfaces/business_interfaces.dart';

class BusinessUsecases implements BusinessExampleInterfaces {
  @override
  Future<bool> businessExampleBool(String _param)async {
    return _param.contains('test');
  }
}
