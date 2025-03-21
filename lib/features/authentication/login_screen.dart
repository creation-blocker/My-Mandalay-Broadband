import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_mandalay_app/features/authentication/components/custom_textfield.dart';
import 'package:my_mandalay_app/features/authentication/signup_screen.dart';
import 'package:my_mandalay_app/utils/constants/app_text_style.dart';
import 'package:my_mandalay_app/utils/constants/string_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Header
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: CustomPaint(
              size: Size(double.infinity, 400), // Set height to 300
              painter: BackgroundPainter(),
            ),
          ),

          // Scrollable Form
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 80), // Space for header
                // Positioned Profile Image
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/logo/logo-mark.png'),
                      SizedBox(height: 12),
                      Text(
                        '${Texts.signInBannerTitle}\n${Texts.signInBannerTitle1}',
                        textAlign: TextAlign.center,
                        style: AppTextstyle.h1,
                      ),
                      SizedBox(height: 12),
                      Text(Texts.signInBannerDesc, style: AppTextstyle.h3),
                    ],
                  ),
                ),
                SizedBox(height: 60),

                // Form Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 1,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Phone Number Field
                            CustomTextfield(
                              keyboardType: TextInputType.phone,
                              label: Texts.signInTextPhoneLabel,
                            ),
                            const SizedBox(height: 24),
                            //Sign In Button
                            SizedBox(
                              width: double.infinity,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0XFF4C4888),
                                      Color(0xFF161342),
                                    ], // Gradient Colors
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), // Rounded Corners
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    //Handle Login Function Here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                      vertical: 12,
                                    ),
                                  ),
                                  child: Text(
                                    Texts.singInButtonText,
                                    style: AppTextstyle.buttonMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Texts.signInTextHaveNoAcc,
                      style: AppTextstyle.bodyLarge,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => SignupScreen());
                      },
                      child: Text(
                        Texts.registerButtonText,
                        style: AppTextstyle.linkText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();

    // Gradient Background
    paint.shader = LinearGradient(
      colors: [
        Color.fromARGB(255, 22, 18, 95),
        Color.fromARGB(255, 15, 14, 28),
        Color.fromARGB(255, 15, 14, 30),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(Rect.fromLTWH(0, 16, size.width, size.height));

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    // Grid Lines
    paint.shader = null;
    paint.color = Colors.white.withOpacity(0.1);
    paint.strokeWidth = 1;

    double step = size.width / 10; // Grid density
    for (double i = 0; i < size.width; i += step) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }
    for (double i = 0; i < size.height; i += step) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }

    // Stars (Different Sizes)
    final random = Random();
    for (int i = 0; i < 50; i++) {
      double x = random.nextDouble() * size.width;
      double y = random.nextDouble() * size.height;
      double radius = (random.nextDouble() * 1) + 1; // Small & large stars
      paint.color = Colors.white.withOpacity((random.nextDouble() * 0.1) + 0.1);
      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
