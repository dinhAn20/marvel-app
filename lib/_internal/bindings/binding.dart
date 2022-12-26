import 'package:get/get.dart';
import 'package:marvel_app/controllers/home/home_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}
