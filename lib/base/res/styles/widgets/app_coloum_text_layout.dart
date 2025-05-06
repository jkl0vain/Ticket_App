import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_forth.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColoumTextLayout({super.key, required this.topText, required this.bottomText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(height: 5),
        TextStyleForth(text: bottomText),
      ],
    );
  }
}
