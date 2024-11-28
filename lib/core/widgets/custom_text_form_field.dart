import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final TextEditingController controller;
  final FormFieldValidator validator;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color focusedBorderColor;
  final double borderRadiusSize;
  final FontWeight hintStyleWeight;
  final VoidCallback? suffixIconResponse;
  final Color suffixIconColor;
  final bool isPasswordShown;
  final ValueChanged? onChanged;
  final Color kSecPrimaryColor;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.isPassword,
    required this.controller,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.focusedBorderColor = kPrimaryColor,
    this.borderRadiusSize = 12,
    this.hintStyleWeight = FontWeight.normal,
    this.suffixIconResponse,
    this.suffixIconColor = Colors.grey,
    this.isPasswordShown = false,
    this.onChanged,
    this.kSecPrimaryColor = Colors.grey,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIconColor: widget.kSecPrimaryColor,
        suffixIconColor: widget.kSecPrimaryColor,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                onPressed: widget.suffixIconResponse,
                icon: Icon(
                  widget.suffixIcon,
                  color: widget.suffixIconColor,
                ),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.focusedBorderColor,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadiusSize),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadiusSize),
          borderSide: BorderSide(color: widget.kSecPrimaryColor),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color:widget.kSecPrimaryColor,
          fontWeight: widget.hintStyleWeight,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: widget.isPassword
          ? widget.isPasswordShown
              ? false
              : true
          : false,
    );
  }
}
