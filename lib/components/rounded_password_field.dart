// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:trill/components/text_field_container.dart';
import 'package:trill/ThemeSystem.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  bool isHidden = true;
  RoundedPasswordField({
    key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isHidden,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.visibility),
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            color: kPrimaryColor,
            onPressed: (){
              isHidden = !isHidden;
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

