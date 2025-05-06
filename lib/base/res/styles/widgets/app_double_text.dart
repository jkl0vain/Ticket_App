import 'package:flutter/material.dart';
import 'package:ticket_app_223846/base/res/styles/app_style.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({Key? key, required this.bigText, required this.smallText, required Future<Object?> Function() func}) : super(key: key);

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () {
            // Add your tap logic here
          },
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );
  }
}