import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {

  const RecipeTitle(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20, top: 40, bottom: 20),
      child: Row(children: [
        Text(
          text,
          textAlign: TextAlign.left,
          maxLines: 2,
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 22,
              color: Colors.black),
        ),
      ]),
    );
  }
}

class CookingTimeText extends StatelessWidget {

  const CookingTimeText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Icon(Icons.access_time),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Text(
            text,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromARGB(255, 46, 204, 112),
            ),
          ),
        ),
      ],
    );
  }
}

class MiddleTitle extends StatelessWidget {

  const MiddleTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 15, top: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color.fromARGB(255, 22, 89, 50),
            ),
          ),
        ),
      ],
    );
  }
}

class IngredientsName extends StatelessWidget {

  const IngredientsName(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 15, top: 15),
          child: Text(
            "• $text",
            style: const TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}

class IngredientsCount extends StatelessWidget {

  const IngredientsCount(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 15, top: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color.fromARGB(255, 121, 118, 118),
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeStepText extends StatelessWidget {

  const RecipeStepText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Padding(

          padding: const EdgeInsets.only(left: 25, right: 10, bottom: 15, top: 15),
          child:Text(
            text,
            softWrap: true,
            style: const TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color.fromARGB(255, 121, 118, 118),
            ),
          ),
        ),),
      ],
    );
  }
}

class NumberText extends StatelessWidget {

  const NumberText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 46, top: 46, left: 24),
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900,
              fontSize: 40,
              color: Color.fromARGB(255, 194, 194, 194),
            ),
          ),
        ),
      ],
    );
  }
}
