import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../../app_constants/app_colors.dart';


Widget largeButton(function, child, colour, {double? height}) {
  getChild() {
    if (child is String) {
      return Text(child, style: const TextStyle(color: Colors.white));
    }
    return child;
  }

  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        height: height ?? 43,
        width: double.infinity,
        child: Center(child: getChild()),
      ),
    ),
  );
}

GestureDetector googleButton(Function() function, child, colour) {
  getChild() {
    if (child is String) {
      return Text(child, style: const TextStyle(color: Colors.white));
    }
    return child;
  }

  return GestureDetector(
    onTap: () {
      function();
    },
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colour,
          border: Border.all(color: AppColors.primaryColor, width: 2.5)),
      height: 57,
      width: double.infinity,
      child: Center(child: getChild()),
    ),
  );
}

GestureDetector backButton(context, {Function? overrideFunction}) {
  return GestureDetector(
    onTap: () {
      if (overrideFunction != null) {
        overrideFunction();
        return;
      }
      Navigator.pop(context);
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryColor,
      ),
      height: 40,
      width: 40,
      child: const Center(
        child: Icon(Icons.arrow_back, color: Colors.white),
      ),
    ),
  );
}

///[buildTextBox] returns the custom Roots text box design, by @Riaz
//! Refactored by @mohannad
//*current location:(lib\a_core\widgets\refactored_general_widgets\text_field_components\RootsTextField.dart)
//TODO: please use the widget instead of this function and comment the function when no file depends on it
Row buildTextBox(
    {required IconData icon,
    required String hintText,
    required Function(String value) onChanged,
    bool obscureText = false,
    Function(dynamic val)? onSubmitted,
    Color? colour,
    bool? canEdit = true}) {
  return Row(
    children: [
      Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            color: (colour == null) ? AppColors.primaryColor : colour),
        child: Center(
          child: Icon(icon, color: Colors.white),
        ),
      ),
      Expanded(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 1,
                        spreadRadius: 2,
                        color: AppColors.shadowColour)
                  ]),
              height: 48,
              child: TextField(
                enabled: canEdit,
                obscureText: obscureText,
                decoration: InputDecoration(
                    enabledBorder: textFieldBorderStyle(),
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.black38),
                    hintText: hintText,
                    border: textFieldBorderStyle()),
                onChanged: (value) => onChanged(value),
                onSubmitted: (value) {
                  if (onSubmitted != null) {
                    onSubmitted(value);
                  } else {
                    () {};
                  }
                },
              ))),
    ],
  );
}
//!removed the commented code and added the BoxDecoration to the function
// BoxDecoration buildInputContainerStyle({Color? colour}) {
//   return BoxDecoration(
//       borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
//       color: (colour == null) ? AppColors.primaryColor : colour);
// }

OutlineInputBorder textFieldBorderStyle() => const OutlineInputBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),
    ),
    borderSide: BorderSide(color: Colors.black12));

///[ClickRegion] is a custom button that has a mouse hover effect. The built in Flutter
///buttons do not change the cursor type as they are not optimised for web
class ClickRegion extends StatelessWidget {
  const ClickRegion({super.key, required this.onClick, required this.child});
  final Function onClick;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onClick(),
        child: MouseRegion(cursor: SystemMouseCursors.click, child: child));
  }
}

Padding dialogTemplate(double height, double width, List<Widget> child,
    {double? verticalPadding, double? horizontalPadding}) {
  return Padding(
    padding: EdgeInsets.symmetric(
        vertical: height * (verticalPadding ?? .18),
        horizontal: width * (horizontalPadding ?? .3)),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: child,
        ),
      ),
    ),
  );
}

///Used in conjunction with a [Stack] widget. This returns the patterned
///Background
//! Refactored by @mohannad
//*current location:(lib\a_core\widgets\refactored_general_widgets\BackGround.dart)
//TODO: please use the widget instead of this function and comment the function when no file depends on it
Widget background(double width, double height) {
  return Opacity(
    opacity: .4,
    child: Container(
      clipBehavior: Clip.hardEdge,
      width: width,
      height: height,
      decoration: const BoxDecoration(),
      child: Image.asset(
        'assets/vectorOriginal.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}

///Just an Icon with some text next to it. Useful for display purposes
class TextIcon extends StatelessWidget {
  TextIcon({super.key, required this.icon, required this.text});
  IconData icon;
  double iconSize = 15.0;
  String text;
  TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColors.primaryColor, size: 24),
        const SizedBox(width: 10),
        Marquee(
            animationDuration: const Duration(seconds: 5),
            autoRepeat: true,
            child: Text(text, style: textStyle))
      ],
    );
  }
}
