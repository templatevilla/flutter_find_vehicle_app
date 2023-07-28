import 'package:find_vehile_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        S.delegate,

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  ThemeData(useMaterial3: true,dialogBackgroundColor: Colors.white),
      initialRoute: "/",
      routes: AppPages.routes,
    );
  }
}

