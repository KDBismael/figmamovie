import 'package:figmamovie/core/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninOrSignup extends StatelessWidget {
  const SigninOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/Group 74.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/Group 2.png",
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 77),
              CustomButton(text: "Sign in", onPressed: () {}),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withOpacity(0.37),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      "or",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        color: Colors.white.withOpacity(0.37),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(text: "Sign up", onPressed: () {}),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    ));
  }
}
