import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_usa/pages/path/to/globals.dart' as globals;


class EntryFieldTextField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final String? suffixIcon;
  final String? preffixIcon;
  final Color? textStyle;

  const EntryFieldTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.suffixIcon,
    this.preffixIcon,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: globals.width*0.79,
        height: globals.height *0.0629,
        child: TextField(
          style: TextStyle(color: textStyle),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.0),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 239, 244, 252),
            labelText: labelText,
            labelStyle: const TextStyle(color: Color.fromRGBO(167, 176, 192, 1)),
            prefixIcon: preffixIcon != null
                ? SvgPicture.asset(suffixIcon!, fit: BoxFit.none)
                : null,
            hintText: hintText,
            hintStyle: const TextStyle(color: Color.fromRGBO(19, 59, 119, 1)),
            suffixIcon: suffixIcon != null
                ? SvgPicture.asset(suffixIcon!, fit: BoxFit.none)
                : null,
          ),
        ),
      ),
    );
  }
}
