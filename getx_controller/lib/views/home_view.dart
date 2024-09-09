import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller/model/opactity_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  OpactityModel opacityController = Get.put(OpactityModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller'),
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Container(
                width: 200,
                height: 200,
                color: Colors.red.withOpacity(opacityController.opacity.value),
              );
            }),
            Obx(
              () {
                return Slider(
                  value: opacityController.opacity.value,
                  onChanged: (value) {
                    opacityController.opacity.value = value;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
