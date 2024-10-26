import 'package:flutter/material.dart';

import 'dart:js' as js;
import 'dart:html' as html;
import 'dart:ui' as ui;
import 'dart:html' as html;

class ScreenUtilityFunctions {
  static final ScreenUtilityFunctions _instance =
      ScreenUtilityFunctions._internal();

  factory ScreenUtilityFunctions() {
    return _instance;
  }

  ScreenUtilityFunctions._internal();


  // static popScreensUntilParentNode({
  //   required BuildContext context,
  // }) {
  //   Navigator.popUntil(context, (route) {
  //     if (route.isFirst && route.isCurrent) {
  //       //true means keep route
  //
  //       return true;
  //     } else {
  //       //false means pop route
  //       return false;
  //     }
  //   });
  //   //}
  // }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }


  static bool isUsingSmallScreen(BuildContext context){
    return MediaQuery.of(context).size.width < 1200;
  }

  static bool isUsingMobilePhone(BuildContext context){
    return MediaQuery.of(context).size.width <= 600;
  }

  static double getScreenHeightWithoutStatusBar(BuildContext context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  }

  static double getScreenHeightWithoutStatusBarAndBottomNavBar(BuildContext context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom;
  }

  static double getStatusBarHeight(BuildContext context){
    return MediaQuery.of(context).padding.top;
  }

  static double getBottomNavigationBarHeight(BuildContext context){
    return MediaQuery.of(context).padding.bottom;
  }


  //The following block of code is not suitable for we apps
  //It is only suitable for mobile or tablet apps, as they have a fixed screen dimensions
  //While in web apps, users can resize the screen as they wish

  // double screenWidth = 0.0;
  // double screenHeight = 0.0;
  // double statusBarHeight = 0.0;
  // double bottomNavigationBarHeight = 0.0;
  // double getScreenHeightWithoutStatusBar = 0.0;
  // bool isUsingMobilePhone = false;
  // bool isUsingSmallScreen = false;

  // void init(BuildContext context) {
  //   final mediaQuery = MediaQuery.of(context);
  //   screenWidth = mediaQuery.size.width;
  //   screenHeight = mediaQuery.size.height;
  //   statusBarHeight = mediaQuery.padding.top;
  //   bottomNavigationBarHeight = mediaQuery.padding.bottom;
  //   getScreenHeightWithoutStatusBar = screenHeight - statusBarHeight;
  //   isUsingMobilePhone = (screenWidth <= 600);
  //   isUsingSmallScreen = (screenWidth <= 1000);
  // }

//* used to get the height of the browser tab and subtract it from the total height of the browser
  // static double getBrowserTabHeight() {
  //   double totalHeight = html.window.outerHeight.toDouble();
  //   double viewportHeight = html.window.innerHeight!.toDouble();
  //   return totalHeight - viewportHeight;
  // }

  // static getHeightFromFigma(double figmaScreenHeight, double figmaWidgetHeight,
  //     BuildContext context) {
  //   double screenHeight = View.of(context).physicalSize.height;
  //   return (figmaWidgetHeight / figmaScreenHeight) * screenHeight;
  // }

  // static getWidthFromFigma(
  //     double figmaScreenWidth, double figmaWidgetWidth, BuildContext context) {
  //   double screenWidth = View.of(context).physicalSize.width;
  //   return (figmaWidgetWidth / figmaScreenWidth) * screenWidth;
  // }
}
