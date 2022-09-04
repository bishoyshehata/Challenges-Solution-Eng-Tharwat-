
import 'package:challange/challange_1.dart';
import 'package:get/get.dart';

class AppRoutes {

  static const initial_route = Routes.challange_screen;

static final routes= [

  GetPage(
      name: Routes.challange_screen,
      page: () => Challange_1_Screen() ),

];




}

class Routes {
  static const challange_screen = '/challange';
}