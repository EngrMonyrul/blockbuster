import 'package:blockbuster/src/screens/home_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const initialRoutes = "/home";
  static final appRoutes = {
    "/home": (context) => const HomeScreen(),
  };
}