import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repopharma_app/pages/login_page.dart';

import '../help/const.dart';
import '../widgets/custom_elevatedButton.dart';
import '../widgets/custom_textField.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [const SizedBox(height: 33,),
          Image.asset(
            'lib/assets/images/login.png',
            height: 100,
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
               const   SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 40,
                      color: kFontColor,
                    ),
                  ),

                const  SizedBox(height: 10,),
                  CustomTextField(
                    hintText: 'User name',
                    icons: Icons.account_circle_outlined,
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: 'E-email',
                    icons: Icons.email_outlined,
                  ),
                 const SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    hintText: 'Address',
                    icons: Icons.location_on_outlined,
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
                    text: 'Register',
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
                'Already have an account ? ',
                style: TextStyle(
                    fontFamily: 'PTSerif-Regular',
                    fontSize: 20,
                    color: kFontColor),
              ),
              GestureDetector(
                onTap: (){
                  Get.off(LoginPage());
                },
                child: Text(
                  'Login ',
                  style: TextStyle(
                      fontFamily: 'PTSerif-Regular',
                      fontSize: 26,
                      color: Color(0xff5ec6fa)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
