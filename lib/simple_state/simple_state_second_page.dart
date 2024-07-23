import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/simple_state/simple_controller.dart';

class SimpleStateSecondPage extends StatelessWidget {

  final controller = Get.find<SimpleController>();
  SimpleStateSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple State Second Page'),
      ),
      body: Center(
        child: GetBuilder<SimpleController>(
          builder: (_) {
            return Text('${controller.count}');
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add)
      )
    );
  }
}