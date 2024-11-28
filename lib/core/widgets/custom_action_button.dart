import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;
  final BorderRadiusGeometry borderRadiusGeometry;

  const CustomActionButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textStyle,
    required this.borderRadiusGeometry,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadiusGeometry,
              )),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
