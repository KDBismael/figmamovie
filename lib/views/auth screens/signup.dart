import 'package:figmamovie/widgets/CustomTextField.dart';
import 'package:figmamovie/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
            const SizedBox(height: 77),
            Form(
              child: Column(
                children: [
                  const CustomTextField(hintText: "E-mail"),
                  const SizedBox(height: 20),
                  const CustomTextField(hintText: "Password"),
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
                        // Navigate to Sign Up
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
