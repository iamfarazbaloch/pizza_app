import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pizza_app/pages/home_page.dart';
import 'package:pizza_app/widgets/my_button.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFF0F0EF),
          ),
          SizedBox(
            child: Image.asset(
              'assets/images/person.png',
              width: size.width,
              height: size.height * 0.6,
            ),
          ),
          Positioned(
            top: size.height * 0.32,
            left: size.width * -0.04,
            child: Image.asset('assets/images/pizza.png', width: size.width),
          ),
          Positioned(
            top: size.height * 0.62,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Pizza for everyone',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Everyday new pizza\neat fresh pizza',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.1,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: size.width * 0.9,
                child: MyButton(
                  onTap: () {
                    Get.off(() => HomePage());
                  },
                  color: Color(0xFFDCBC85),
                  text: 'Sign up with email',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * 0.01,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: size.width * 0.9,
                child: MyButton(
                  color: Color(0xFFFFA200),
                  text: 'Continue with Google',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
