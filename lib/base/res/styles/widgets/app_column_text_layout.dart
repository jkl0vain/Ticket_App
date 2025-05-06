import 'package:flutter/cupertino.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_fifth.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_forth.dart';
import 'package:ticket_app_223846/base/res/styles/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnTextLayout({super.key,required this.topText, required this.bottomText,
  required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleFifth(text: topText, isColor: isColor,),
        SizedBox(height: 5,),
        TextStyleForth(text: bottomText, isColor: isColor,),
      ],
    );
  }
}