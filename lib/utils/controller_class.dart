import 'package:get/get.dart';
import 'package:getx_project/utils/class_student_name.dart';

class MyController extends GetxController {
  var student = StudentName();
  void upperCase() {
    student.name.value = student.name.value.toUpperCase();
    update();
  }
}
