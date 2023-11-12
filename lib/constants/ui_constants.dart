import 'package:cognizflutter/utils/color_to_hex.dart';
import 'package:flutter/material.dart';

class UiConstants {
  BuildContext context;
  UiConstants(this.context);
  // screen height and width
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  // color codes for the app
  static const String flutterlogoback = '#dff4fe';
  static const String loginback1 = '#c7edfd';
  static const String loginback2 = '#ccedfd';
  static const String loginback3 = '#e1f5fe';
  static const String textColor = '#81868e';
  static const String btnColor = '#77d8fb';
  static const String listBackground = '#f2f2f2';
  static const String listItemColor = '#fcfcfc';

  // color codes for pie chart
  static const String hotColor = '#ff203a';
  static const String warmColor = '#ff9e4b';
  static const String coldColor = '#00a1de';

  static const String textHighlightText = '%#';

  // theme data
  static ThemeData? appTheme = ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: HexColor(btnColor),
      )),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero,
              textStyle: TextStyle(
                  color: HexColor(btnColor), fontWeight: FontWeight.bold))),
      // buttonTheme: ButtonThemeData(buttonColor: HexColor(btnColor)),
      textTheme: TextTheme(
        labelSmall: const TextStyle(),
        labelLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        bodyLarge: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(color: HexColor(textColor), fontSize: 16),
        // bodySmall: TextStyle(color: Colors.blue),
      ));
  static ThemeData darkTheme = ThemeData.dark();

  static InputDecoration textFieldWithoutIcons({
    String hintTextStr = "",
    Widget? prefix,
  }) {
    return InputDecoration(
      fillColor: Colors.white,
      isDense: true,
      filled: true,
      labelText: hintTextStr,
      labelStyle: appTheme?.textTheme.bodyMedium,
      contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
      // hintStyle: const TextStyle(color: Colors.black54 ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: const BorderSide(color: Colors.red)),
      focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: const BorderSide(color: Colors.black, width: 2)),
      enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(13.0),
          borderSide: BorderSide(color: HexColor(textColor))),
      // border:
    );
  }
}
