import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_mandalay_app/features/authentication/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(microseconds: 2500), () {
      Get.off(() => LoginScreen());
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff161342), Color(0xff161341)],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets/logo/logo-full.png")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
