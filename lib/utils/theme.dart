import 'package:cloudnet_v3_flutter/utils/color.dart' as color;
import 'package:cloudnet_v3_flutter/utils/const.dart' as k;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData cloudnetTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: color.white,
    elevation: k.elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.0)),
    ),
    toolbarHeight: k.navbarHeight,
    titleTextStyle: TextStyle(
      fontFamily: fontFamily,
      color: color.black,
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
      height: 1.25,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: color.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(color: color.black),
    actionsIconTheme: IconThemeData(
      color: color.black,
      size: 24.0,
    ),
    // actionsIconTheme: null,
  ),
  dialogTheme: DialogTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: color.blue,
    backgroundColor: color.lightGray,
  ),
  scaffoldBackgroundColor: color.lightGray,
  backgroundColor: color.lightGray,
  iconTheme: const IconThemeData(
    color: color.blue,
    size: k.iconsSize,
  ),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(k.radius.medium)),
    margin: k.edgeAll.medium / 2.0,
    color: color.white,
    elevation: 8.0,
    shadowColor: color.lightBlue,
  ),
  tooltipTheme: TooltipThemeData(
    waitDuration: k.transitionDuration,
    margin: k.edgeAll.small,
    padding: k.edgeAll.small,
    showDuration: k.transitionDuration,
    decoration: ShapeDecoration(
      color: color.gray,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(k.radius.small)),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      visualDensity: VisualDensity.comfortable,
      textStyle: photodocText.button,
      primary: color.blue,
      backgroundColor: color.white.withOpacity(0.56),
      side: const BorderSide(color: color.blue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(k.radius.medium))),
      padding: k.edgeAll.medium,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(color.white),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: color.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: color.blue),
    ),
    contentPadding: EdgeInsets.all(8.0),
  ),
  textTheme: photodocText,
);

const fontFamily = 'Inter';

const photodocText = TextTheme(
  headline1: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 32.0,
    height: 1.25,
  ),
  headline2: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    height: 1.25,
  ),
  headline3: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    height: 1.25,
  ),
  headline4: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 20.0,
    height: 1.25,
  ),
  headline5: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    height: 1.25,
  ),
  headline6: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    height: 1.25,
  ),
  bodyText1: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
    height: 1.25,
  ),
  bodyText2: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    height: 1.25,
  ),
  subtitle1: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    height: 1.25,
  ),
  subtitle2: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    height: 1.25,
  ),
  overline: TextStyle(
    fontFamily: fontFamily,
    color: color.white,
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    height: 1.25,
  ),
  caption: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    height: 1.25,
  ),
  button: TextStyle(
    fontFamily: fontFamily,
    color: color.black,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    height: 1.25,
  ),
);
