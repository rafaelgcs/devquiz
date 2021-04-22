import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/modules/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  const QuestionIndicatorWidget(
      {Key? key, required this.currentPage, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Questão ",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                      text: currentPage.toString(),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "de ",
                  style: AppTextStyles.body,
                  children: [
                    TextSpan(
                      text: length.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(value: currentPage / length)
        ],
      ),
    );
  }
}
