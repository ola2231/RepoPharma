import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/pages/login_page.dart';
import 'package:repopharma_app/pages/logo_page.dart';

void main() {
  runApp(const RepoPharma());
}

class RepoPharma extends StatelessWidget {
  const RepoPharma({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/LoginPage", page:()=>LoginPage()),
        GetPage(name: "/LogoPage", page:()=>LogoPage())

      ],
      home: LogoPage(),
    );
  }
}
