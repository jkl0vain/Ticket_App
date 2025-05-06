import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';

class TextStyleFifth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFifth({super.key, required this.text,  this.align= TextAlign.start, bool? isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle5.copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
    );
  }
}
