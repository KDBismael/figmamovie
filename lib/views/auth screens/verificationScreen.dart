import 'package:figmamovie/widgets/CustomTextField.dart';
import 'package:figmamovie/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/Group 74.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/Group 2.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),
            Text(
              "We have sent a verification code to the e-mail address you entered, by entering the code you can set your create your account.",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 40),
            Form(
              child: Column(
                children: [
                  const CustomTextField(hintText: "Verification Code"),
                  const SizedBox(height: 40),
                  CustomButton(text: "Sign Up", onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text.rich(
              TextSpan(
                text: "Do you already have an account?",
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  TextSpan(
                    text: " Sign In ",
                    style: const TextStyle(color: Color(0xff6C47DB)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to Sign Inå
                      },
                  ),
                  const TextSpan(text: "Now!"),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
