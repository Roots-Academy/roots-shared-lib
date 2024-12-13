
import 'package:flutter/material.dart';

import '../../app_constants/app_colors.dart';


class ProgressIndicatorBar extends StatelessWidget {
  ProgressIndicatorBar(
      {super.key,
      required this.pages,
      required this.currentPage,
      this.pageTitles});

  final List<Widget> pages;
  final int currentPage;
  List<String>? pageTitles;
  final double gap = 100;

  @override
  Widget build(BuildContext context) {
    if (pageTitles != null) {
      assert(pages.length == pageTitles!.length);
      return Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            for (int i = 0; i < pages.length; i++)
              Row(children: [
                CircularProgressIndicatorSegment(
                    pageTitles: pageTitles,
                    pages: pages,
                    gap: gap,
                    qIndex: currentPage,
                    index: pages.indexOf(pages[i])),
                //const SizedBox(width:10),
              ])
          ]),
          const SizedBox(
            height: 15,
          )
        ],
      );
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      for (Widget page in pages)
        Row(children: [
          progressIndicatorSegment(currentPage, pages.indexOf(page)),
          const SizedBox(width: 10),
        ])
    ]);
  }

  ///Used in the [SignUpQuestions] page to show which page the user is on
  Container progressIndicatorSegment(int qIndex, int index) {
    return Container(
      width: 50,
      height: 8,
      decoration: BoxDecoration(
          color: (qIndex >= index) ? AppColors.primaryColor : Colors.transparent,
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}

class CircularProgressIndicatorSegment extends StatelessWidget {
  const CircularProgressIndicatorSegment({
    super.key,
    required this.pageTitles,
    required this.pages,
    required this.gap,
    required this.qIndex,
    required this.index,
  });

  final List<String>? pageTitles;
  final List<Widget> pages;
  final double gap;
  final int qIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    Color borderColour = (qIndex >= index) ? AppColors.primaryColor : Colors.grey;
    Color textColour = (qIndex > index)
        ? Colors.white
        : (qIndex == index)
            ? AppColors.primaryColor
            : Colors.grey;
    Color connectorColour =
        (qIndex - 1 >= index) ? AppColors.primaryColor : Colors.grey;
    return Row(
      children: [
        Column(
          children: [
            Tooltip(
              message: pageTitles![index],
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: (qIndex > index)
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    border: Border.all(color: borderColour, width: 2),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(color: textColour),
                  ),
                ),
              ),
            ),
          ],
        ),
        if (index < pages.length - 1)
          Container(width: gap, height: 2, color: connectorColour)
      ],
    );
  }
}
