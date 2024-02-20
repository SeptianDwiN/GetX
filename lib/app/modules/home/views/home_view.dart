import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home View is working",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/profile');
              },
              child: Text("pindah ke profile"),
            ),
            ElevatedButton(onPressed: () {
              Get.toNamed('/counter');
            },
            child: Text("pindah ke halaman counter")
            ),
             ElevatedButton(onPressed: () {
              Get.toNamed('/biodata');
            },
            child: Text("pindah ke halaman biodata")
            ),
            ElevatedButton(onPressed: () {
              Get.toNamed('/latihan');
            },
            child: Text("pindah ke halaman latihan")
            ),

          ],
        ),
      ),
    );
  }
}
