import 'package:flutter/material.dart';

import '../data/fonts.dart';

class RecipeStep extends StatefulWidget {
  const RecipeStep(
      {required this.stepNumber, required this.recipeStep, super.key});

  final String stepNumber;
  final String recipeStep;

  @override
  State<RecipeStep> createState() => _RecipeStep();
}

class _RecipeStep extends State<RecipeStep> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) => Container(
        color: const Color.fromARGB(255, 236, 236, 236),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NumberText(
              widget.stepNumber,
            ),
            Flexible(
              child: RecipeStepText(
                widget.recipeStep,
              ),
            ),
            Transform.scale(
              scale: 1.3,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                side: MaterialStateBorderSide.resolveWith(
                    (states) => const BorderSide(
                          width: 2.0,
                          color: Color.fromARGB(255, 121, 118, 118),
                        )),
                activeColor: const Color.fromARGB(255, 22, 89, 50),
                value: isChecked,
                onChanged: (bool? value) => setState(() {
                  isChecked = !isChecked;
                }),
              ),
            ),
            ),
          ],
        ),
      );
}
