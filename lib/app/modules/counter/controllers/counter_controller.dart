import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  final count = 1.obs;

  void increment() {
      count.value++;
    if (count.value >= 100) {
      
      Get.snackbar(
        "Jgn Lebih",
        "Gabisa Lebih",
        colorText: Colors.white,
        backgroundColor: Colors.cyan,
        
        );     
    }
  }

  void decrement() {
     count.value--;
    if (count.value <= 3) {
      
      Get.snackbar(
        "Jgn Kurang",
        "Gabisa Kurang",
        colorText: Colors.white,
        backgroundColor: Colors.cyan);
    }
  }
}
