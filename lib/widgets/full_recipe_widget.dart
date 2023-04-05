import 'package:flutter/material.dart';
import 'package:otus_homework/data/fonts.dart';
import 'package:otus_homework/widgets/recipeStep.dart';

import '../recipe.dart';
import 'favoriteButton.dart';

class FullRecipeWidget extends StatefulWidget {
  const FullRecipeWidget({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<FullRecipeWidget> createState() => _FullRecipeWidgetState();
}

class _FullRecipeWidgetState extends State<FullRecipeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecipeTitle(widget.recipe.title),
                      const FavoriteButton(
                        iconData: Icons.favorite_rounded,
                        color: Colors.deepOrangeAccent,
                      ),
                    ]),
                CookingTimeText(widget.recipe.cookingTime > 60 ?
                "${widget.recipe.getCookingTime()[0]} часов"
                    " ${widget.recipe.getCookingTime()[1]} минут"
                    : "${widget.recipe.getCookingTime()[0]} минут"),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.recipe.picturePath,
                    fit: BoxFit.fitWidth,
                    width: 396,
                    height: 229.38,
                  ),
                ),
                const MiddleTitle("Игредиенты"),
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 121, 118, 118),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: List.generate(
                      widget.recipe.ingredients.length,
                      (int index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IngredientsName(widget.recipe.ingredients[index][0]),
                          IngredientsCount(widget.recipe.ingredients[index][1]),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: const <Widget>[
                    MiddleTitle("Шаги приготовления"),
                  ],
                ),
                SizedBox(
                  child: Column(
                    children: List.generate(
                      widget.recipe.steps.length,
                      (int index) => RecipeStep(
                        stepNumber: index.toString(),
                        recipeStep: widget.recipe.steps[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


