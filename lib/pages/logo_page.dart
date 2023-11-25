import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/widgets/custom_elevatedButton.dart';

import 'login_page.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            'lib/assets/images/logo.png',
            height: 300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'RepoPharma',
          style: TextStyle(
              fontFamily: 'PTSerif-Regular',
              fontSize: 40,
              color: Color(0xffFC9599)),
        ),
        const SizedBox(
          height: 35,
        ),
        CustomElevatedButton(
          text: 'Go',
          getPage: '/LoginPage',
          width: 120,
        ),
        const SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
