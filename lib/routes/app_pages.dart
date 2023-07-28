import 'package:flutter/material.dart';
import '../view/home_screen/home_screen.dart';
import '../view/payment_done/payment_done_screen.dart';
import '../view/selected_car/selected_car_screen.dart';
import 'app_routes.dart';

class AppPages {
  static const initialRoute = Routes.homeRoute;
  static Map<String, WidgetBuilder> routes = {
    Routes.homeRoute: (context) => const HomeScreen(),
    Routes.selectedCArScreenRoute: (context) => const SelectedCArScreen(),
    Routes.paymentDoneScreenRoute: (context) => const PaymentDoneScreen(),
  };
}
