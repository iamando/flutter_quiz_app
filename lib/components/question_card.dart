import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/components/option.dart';
import 'package:flutter_quiz_app/constants.dart';
import 'package:flutter_quiz_app/controllers/question_controller.dart';
import 'package:flutter_quiz_app/models/questions_model.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAnswer(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
