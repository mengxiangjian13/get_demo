import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ObsPage extends StatelessWidget {

  var count = 0.obs; // .obs 表示可以监听 observable

  ObsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObsPage'),
      ),
      body: Center(
        // 使用 Obx 监听 count 的变化
        child: Obx(() => Text('count: $count')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          count++;
        },
      ),
    );
  }
}