import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';
import '../../theme/app_text_styles.dart';

class PhoneNumberInputField extends StatefulWidget {
  final TextEditingController areaCodeController;
  final TextEditingController numberController;
  double? height;
  double? width;

  PhoneNumberInputField(
      {super.key,
      required this.areaCodeController,
      required this.numberController,
      this.height,
      this.width});

  @override
  State<PhoneNumberInputField> createState() => _PhoneNumberInputFieldState();
}

class _PhoneNumberInputFieldState extends State<PhoneNumberInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height ?? 48,
        width: widget.width ?? 400,
        padding: const EdgeInsets.symmetric(
          horizontal: 1.0,
        ),
        decoration: BoxDecoration(
            color: AppColors.textInputBgColour,
            border: Border.all(color: AppColors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(9.5)),
        child: Row(
          children: [
            SizedBox(
                width: 60,
                child: TextFormField(
                  controller: widget.areaCodeController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 8,
                      ),
                      hintText: "+44",
                      hintStyle: AppTextStyles.bodySmall16
                          .copyWith(color: AppColors.disabledTextColor),
                      border: InputBorder.none),
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                )),
            const VerticalDivider(
              color: AppColors.grey,
              thickness: 1.0,
            ),
            Expanded(
                child: TextFormField(
              controller: widget.numberController,
              decoration: InputDecoration(
                hintText: 'Please enter your phone number',
                hintStyle: AppTextStyles.bodySmall16
                    .copyWith(color: AppColors.disabledTextColor),
                border: InputBorder.none,
              ),
              keyboardType: TextInputType.phone,
            ))
          ],
        ));
  }
}
