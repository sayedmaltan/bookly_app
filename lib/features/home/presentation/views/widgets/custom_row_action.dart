import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';

class CustomRowAction extends StatelessWidget {
  const CustomRowAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Opacity(
        opacity: 0.9,
        child: Row(
          children: [
            CustomActionButton(
              backgroundColor: Colors.white,
              text: '19.99€',
              borderRadiusGeometry: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              textStyle: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.black),
            ),
            CustomActionButton(
              backgroundColor: Color(0xffEF8262),
              text: 'Free preview',
              borderRadiusGeometry: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              textStyle: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
