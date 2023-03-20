import 'recipe.dart';
import 'widgets/recipe_widget.dart';
import 'data/data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  static final List<Recipe> recipes = getRecipes();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: ((context, index) => RecipeWidget(context: context,
                recipe: recipes[index], index: index)))
    );
  }
}