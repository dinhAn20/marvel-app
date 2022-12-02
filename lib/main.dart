import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marvel_app/_internal/bindings/binding.dart';

import 'UI/screens/home/home_screen.dart';

void main() {
  runApp(const Marvel());
}

class Marvel extends StatelessWidget {
  const Marvel({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: Binding(),
      home:const  HomeScreen(),
    );
  }
}
