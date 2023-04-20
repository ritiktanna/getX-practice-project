import 'package:get/get.dart';

class StudentName {
  var name = 'ritik'.obs;
  var age = '22'.obs;
}

class StudentNameWithOutObs {
  String name;
  StudentNameWithOutObs(this.name);
}
