import 'package:flutter/cupertino.dart';

///[ClickableWidget] is a custom widget that has a mouse hover effect.
///This was created to be used instead of GestureDetector or Inkwell
///as they do not change the cursor type on hover, as they are not optimised for web
class ClickableWidget extends StatelessWidget {
  const ClickableWidget({super.key, required this.onTap, required this.child});
  final Function onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(),
        child: MouseRegion(cursor: SystemMouseCursors.click, child: child));
  }
}
