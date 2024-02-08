import 'package:customwheterapp/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.inputFormatters,
    this.cursorColor,
    this.hintText,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.errorText,
    this.hintcolor,
    this.suffixIcon,
    this.validator,
    this.initialValue,
  }) : super(key: key);

  final String? hintText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? cursorColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;
  final Color? hintcolor;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      initialValue: initialValue,
      cursorColor: Colors.black,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      autofocus: false,
      style: GoogleFonts.kumbhSans(
        fontWeight: fontWeight,
        color: Colors.black,
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        suffix: suffixIcon,
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20), 
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)), 
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Icon(Icons.search, size: 30, color: AppColors.greyColor,
          ),
        ),
        hintStyle: GoogleFonts.kumbhSans(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: hintcolor,
        ),
      ),
    );
  }
}
