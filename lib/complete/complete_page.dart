import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/complete/complete_controller.dart';
import 'package:get_demo/complete/complete_second_page.dart';

class CompletePage extends GetView<CompleteController> {

  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(() => Text('count: ${controller.count}')),
            Obx(() => Text('user: ${controller.user.value.name} ${controller.user.value.email}')),
            ElevatedButton(
              onPressed: () {
                controller.updateUser();
              },
              child: const Text('Update User'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const CompleteSecondPage());
              },
              child: const Text('to second page'),
            ),
          ],
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