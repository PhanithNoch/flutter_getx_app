import 'package:fluttergetxapp/getx_api/domain/adapters/entity/people_model.dart';

abstract class IPeopleRepository {
  Future<People> getPeople();
}