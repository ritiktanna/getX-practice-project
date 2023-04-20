// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/utils/controller_class.dart';

class ToUpperCaseScreen extends StatelessWidget {
  ToUpperCaseScreen({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
                //init: MyController(),
                builder: (controller) {
              return Text(
                'Name in Uppercase is ${myController.student.name}',
              );
            }),
            ElevatedButton(
              onPressed: () {
                myController.upperCase();
                // Get.find<MyController>().upperCase();
              },
              child: const Text('upper'),
            )
          ],
        ),
      ),
    );
  }
}
