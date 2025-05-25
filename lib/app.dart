import 'package:batteryqk_web_app/localization/localization.dart';
import 'package:batteryqk_web_app/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


import 'auth_chack.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:AuthCheck(),//added splash screen
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      translations: Language(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          canvasColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:AppColor.blueColor),
              borderRadius: BorderRadius.circular(6),
            ),

            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6),
            ),

          ),
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Color(0xFF374151),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          )
      ),
    );
  }
}
