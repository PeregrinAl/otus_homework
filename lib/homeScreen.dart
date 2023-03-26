import 'recipe.dart';
import 'widgets/recipe_widget.dart';
import 'data/data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<Recipe> recipes = getRecipes();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: ((context, index) =>
              RecipeWidget(recipe: recipes[index])),
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
