import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/pages/register_page.dart';
import '../help/const.dart';
import '../widgets/custom_elevatedButton.dart';
import '../widgets/custom_textField.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'lib/assets/images/login1.png',
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: Card(
              elevation: 14,
              color: kCardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 40,
                      color:kFontColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'E-email',
                    icons: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'Password',
                    icons: Icons.lock_outline,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    text: 'Login',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account ? ',
                style: TextStyle(
                  fontFamily: 'PTSerif-Regular',
                  fontSize: 20,
                  color: kFontColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(
                    RegisterPage(),
                  );
                },
                child: Text(
                  'Register ',
                  style: TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 26,
                    color: Color(0xff5ec6fa),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
