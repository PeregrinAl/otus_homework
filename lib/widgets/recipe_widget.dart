import 'package:flutter/material.dart';
import '../data/constants.dart';
import '../data/fonts.dart';
import '../recipe.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [shadow],
      ),
      width: 220,
      child: Row(
        children: <Widget>[
          Image.asset(recipe.picturePath,
              width: 149,
              height: 136,
          ),

          Flexible(
            child: SizedBox(
              height: 136,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  recipeTitle(recipe.title),
                  cookingTimeText(recipe.getCookingTime()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}