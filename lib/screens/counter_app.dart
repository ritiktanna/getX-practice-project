// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);
  RxInt counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
      body: Center(
        child: Obx(
          () => Text(
            counter.toString(),
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }

  void increment() {
    counter++;
  }
}
