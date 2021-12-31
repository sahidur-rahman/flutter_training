// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_training/day_27/static_models/model.dart';
import 'package:flutter_training/widgets/material_button_widget.dart';

class QuizeAppBody extends StatefulWidget {
  const QuizeAppBody({Key? key}) : super(key: key);

  @override
  _QuizeAppBodyState createState() => _QuizeAppBodyState();
}

class _QuizeAppBodyState extends State<QuizeAppBody> {
  // ignore: prefer_final_fields
  late QuestionSet qs = ModelApp27.questions[ModelApp27.index];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS96_ej_VJWFM3h8hnIj7-RFyUxfemXZ02ukw&usqp=CAU')
                .image,
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 84.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            //Questions count, score board and image of the question
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Question count
                Text(
                  '${ModelApp27.index + 1}/ ${ModelApp27.questions.length}\nQuestions',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),

                const SizedBox(
                  width: 16.0,
                ),

                //Image of the question
                CircleAvatar(
                  radius: 50,
                  child: ClipOval(
                    child: Image.asset(
                        'assets/images/${ModelApp27.questions[ModelApp27.index].ans}.jpg'),
                  ),
                ),

                const SizedBox(
                  width: 16.0,
                ),

                //Score board
                const Text(
                  '0 \nScore',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),

            const SizedBox(
              height: 24,
            ),

            //Question title
            const Text(
              'Guess who is this?',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 32.0,
            ),

            //Question A
            BuildListTile(
              leading: 'A',
              title: ModelApp27.questions[ModelApp27.index].qa,
            ),

            const SizedBox(
              height: 16.0,
            ),

            //Question B
            BuildListTile(
              leading: 'B',
              title: ModelApp27.questions[ModelApp27.index].qb,
            ),

            const SizedBox(
              height: 16.0,
            ),

            //Question C
            BuildListTile(
              leading: 'C',
              title: ModelApp27.questions[ModelApp27.index].qc,
            ),

            const SizedBox(
              height: 16.0,
            ),

            //Question D
            BuildListTile(
              leading: 'D',
              title: ModelApp27.questions[ModelApp27.index].qd,
            ),

            const SizedBox(
              height: 16.0,
            ),
            //Buttons to control questions previous or next
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Button previous
                Align(
                  alignment: Alignment.topLeft,
                  child: MeterialButtonWidget(
                    title: 'Previous',
                    notifyRoot: () {
                      if (ModelApp27.index > 0) {
                        ModelApp27.index--;
                      } else {
                        ModelApp27.index = 6;
                      }
                      setState(() {});
                    },
                  ),
                ),

                //Button next
                Align(
                  alignment: Alignment.centerRight,
                  child: MeterialButtonWidget(
                    title: 'Next',
                    notifyRoot: () {
                      if (ModelApp27.index < 6) {
                        ModelApp27.index++;
                      } else {
                        ModelApp27.index = 0;
                      }
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuildListTile extends StatefulWidget {
  BuildListTile({
    Key? key,
    required this.leading,
    required this.title,
    this.subTitle = '',
  }) : super(key: key);

  final String leading;
  final String title;
  String subTitle;

  @override
  _BuildListTileState createState() => _BuildListTileState();
}

class _BuildListTileState extends State<BuildListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(widget.leading),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}
