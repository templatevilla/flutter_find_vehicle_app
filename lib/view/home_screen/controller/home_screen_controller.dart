import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  int currentIndex = 0;
  void setCurrentId(int index) {
    currentIndex = index;
    update();
  }

}