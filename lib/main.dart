import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/screens/to_uppercase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: ToUpperCaseScreen(),
    );
  }
}
