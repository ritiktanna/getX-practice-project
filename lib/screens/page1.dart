import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/screens/page2.dart';

class Page1 extends StatefulWidget {
  Page1({
    super.key,
  });

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController controller = TextEditingController();

  String data = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Page 1'),
          ),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  controller: controller,
                  onChanged: (value) {
                    setState(() {
                      data = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => const Page2(),
                      transition: Transition.cupertino,
                      arguments: data,
                    );
                  },
                  child: const Text(
                    'Go to Page 2',
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
