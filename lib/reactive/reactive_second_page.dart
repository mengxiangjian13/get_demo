import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_demo/reactive/reactive_controller.dart';
import 'package:get/get.dart';

class ReactiveSecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Second Page'),
      ),
      body: Center(
        child: GetX<ReactiveController>(
          builder: (controller) {
            return Text('${controller.count}');
          }
        )
      )
    );
  }
}