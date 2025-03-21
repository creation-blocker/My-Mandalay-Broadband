import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_mandalay_app/features/authentication/login_screen.dart';
import 'package:my_mandalay_app/utils/constants/app_text_style.dart';
import 'package:my_mandalay_app/utils/constants/string_text.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Set AppBar height
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // AppBar background color
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 0,
                blurRadius: 1, // Softness of the shadow
                offset: Offset(0, 2), // Shadow position (x, y)
              ),
            ],
          ),
          child: AppBar(
            title: Text('OTP', style: AppTextstyle.appBarTitle),
            backgroundColor: Colors.transparent, // Transparent to show shadow
            elevation: 0, // Remove default shadow
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF8FAFF),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(Texts.otpTextHeading, style: AppTextstyle.h2),
                const SizedBox(height: 5),
                Text(Texts.otpTexPhoneNo, style: AppTextstyle.bodyMedium),
                const SizedBox(height: 60),
                Pinput(
                  length: 6,
                  showCursor: true,
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 50,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Color(0xFFB4B9C9)),
                      color: Colors.white,
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 56,
                    height: 50,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Theme.of(context).primaryColor),
                    ),
                  ),
                  submittedPinTheme: PinTheme(
                    width: 56,
                    height: 50,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Theme.of(context).primaryColor),
                      color: Colors.white,
                    ),
                  ),
                  onCompleted: (pin) {
                    print("Entered PIN: $pin");
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '00:35',
                          textAlign: TextAlign.center,
                          style: AppTextstyle.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Texts.otpTextDesc, style: AppTextstyle.bodySmall),
                    TextButton(
                      onPressed: () {
                        //Handle OTP Resend Function
                      },
                      child: Text(
                        Texts.otpTextResend,
                        style: AppTextstyle.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
                      borderRadius: BorderRadius.circular(10),
                      // Rounded Corners
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        //Handle OTP Function Here
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
                        Texts.otpButtonText,
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
    );
  }
}
