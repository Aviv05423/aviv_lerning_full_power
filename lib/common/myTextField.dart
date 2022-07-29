import 'package:flutter/material.dart';

TextField myTextField(String hintText, bool obscureText, control){
  return TextField(
     controller: control,
      obscureText: obscureText,
      decoration: InputDecoration(
      fillColor: Colors.grey[200],
      filled: true,
      contentPadding: const EdgeInsets.symmetric(
      vertical: 13, horizontal: 20),
  focusedBorder: OutlineInputBorder(
  borderSide:
  BorderSide(color: Colors.deepPurple, width: 1.0),
  borderRadius: BorderRadius.circular(12),
  ),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white, width: 1.0),
  borderRadius: BorderRadius.circular(12),
  ),
  hintTextDirection: TextDirection.rtl,
  hintText: hintText,
  ));
}