import 'package:flutter/material.dart';
import '../data/constants.dart';
import '../data/fonts.dart';
import '../recipe.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({
    Key? key,
    required this.context,
    required this.recipe,
    required this.index,
  }) : super(key: key);

  final BuildContext context;
  final Recipe recipe;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [shadow],
      ),
      margin: const EdgeInsets.all(10),
      width: 220,
      child: Row(
        children: <Widget>[
          Image.asset(recipe.picturePath,
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 5,
              fit: BoxFit.fitWidth
          ),

          Flexible(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  recipeTitle(recipe.title),
                  cookingTimeText("${recipe.cookingTime} минут"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}