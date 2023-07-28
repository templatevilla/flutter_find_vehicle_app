import 'package:flutter/services.dart';

Color bgColor = "#FFFFFF".toColor();
Color lightBlack = "#454545".toColor();
Color darkGray = "#707070".toColor();
Color regulerWhite = "#FFFFFF".toColor();
Color borderColor = "#F3F3F3".toColor();
Color regulerBlack = "#000000".toColor();
Color pacificBlue = "#2FA2B9".toColor();
Color hintColor = "#565858".toColor();
Color errorColor = "#FF6565".toColor();
Color shadowColor = "#24819498".toColor();
Color lightPacific = "#D8F0F4".toColor();
Color regularBlack = "#000000".toColor();
Color regularWhite  = "#FFFFFF".toColor();
Color tabbarBackground  = "#F6F6F6".toColor();
Color selectTabColor = "#819498".toColor();
Color dividerColor = "#F1F1F1".toColor();
Color containerBorder = "#D9DBDD".toColor();
Color gray = "#8D8D8D".toColor();

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

setStatusBarColor(Color color){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
  ));
}
