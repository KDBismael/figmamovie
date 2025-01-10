import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      style: GoogleFonts.inter(
        color: Colors.white.withOpacity(0.27),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          color: Colors.white.withOpacity(0.27),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: const Color(0x004d4d4d).withOpacity(0.4),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          borderSide: const BorderSide(color: Color(0xff6C47DB)),
        ),
      ),
    );
  }
}
