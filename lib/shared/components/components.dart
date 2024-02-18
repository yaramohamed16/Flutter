import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color backgroundColor = Colors.deepPurpleAccent,
  required VoidCallback function,
  required String text,
  bool isUpperCase = true,
  double radius = 0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: backgroundColor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultTextFormField({
  required TextEditingController control,
  required String text,
  required IconData prefix,
  required TextInputType type,
  bool isPassword = false,
  IconData? suffix,
  void Function(String)? onSubmit, // Update the type to accept a string
  void Function(String)? onChange, // Update the type to accept a string
  required String? Function(String?) validate,
  VoidCallback? suffixPressed,
}) =>
    TextFormField(
      controller: control,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffix),
              )
            : null,
      ),
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      // Pass onSubmit directly
      onChanged: onChange,
      // Pass onChange directly
      validator: validate,
    );
