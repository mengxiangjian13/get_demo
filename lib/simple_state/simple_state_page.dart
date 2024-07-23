import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/simple_state/simple_controller.dart';
import 'package:get_demo/simple_state/simple_state_second_page.dart';

class SimpleStatePage extends StatelessWidget {

  SimpleStatePage({super.key});
  final controller = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple State'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SimpleStateSecondPage());
            },
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
      body: Center(
        child: GetBuilder<SimpleController>(
          builder: (_) {
            return Text('count: ${controller.count}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}