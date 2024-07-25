import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/reactive/reactive_controller.dart';
import 'package:get_demo/reactive/reactive_second_page.dart';

class ReactivePage extends StatelessWidget {

  final controller = Get.put(ReactiveController());
  ReactivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive'),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => ReactiveSecondPage());
            },
            icon: const Icon(Icons.navigate_next),
          )
        ],
      ),
      body: Center(
        child: GetX<ReactiveController>(
          builder: (_) {
            return Text("count: ${controller.count}");
          }
        )
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