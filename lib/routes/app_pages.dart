import 'package:get/route_manager.dart';
import 'package:marvel_app/UI/screens/home/home_screen.dart';
part 'app_routes.dart';

mixin AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
  ];
}
