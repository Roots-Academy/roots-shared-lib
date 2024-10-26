import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';


class RootsDropdown extends StatefulWidget {
  RootsDropdown(
      {super.key,
      required this.onValueSelected,
      required this.options,
      required this.selectedValue,
      required this.label,
      required this.screenWidth});

  final Function(String) onValueSelected;
  final List<String> options;
  String selectedValue;
  final String label;
  double screenWidth;

  @override
  State<RootsDropdown> createState() => _RootsDropdownState();
}

class _RootsDropdownState extends State<RootsDropdown> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.tealColour,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          height: 40,
          width: (widget.label != null) ? null : 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Text(
              widget.label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(color: AppColors.shadowColour, blurRadius: 6)
                ]),
            height: 40,
            width: double.infinity,
            child: Row(
              children: [
                const SizedBox(width: 15),
                Expanded(
                  child: DropdownButton(
                    value: widget.selectedValue,
                    // icon: Icon(Icons.arrow_forward_ios, color: tealColour),

                    underline: Container(),
                    onChanged: (val) {
                      if (val == null) return;
                      widget.onValueSelected(val);
                    },
                    items: [
                      //DropdownMenuItem<String>(child: SizedBox(width: double.infinity), value: null),
                      for (String option in widget.options)
                        DropdownMenuItem<String>(
                            value: option, child: Text(option)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
