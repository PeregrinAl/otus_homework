import 'package:flutter/material.dart';
import 'package:otus_homework/data/data.dart';
import 'package:otus_homework/widgets/full_recipe_widget.dart';
import 'homeScreen.dart';
import 'data/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      home: FullRecipeWidget(recipe: getRecipes()[0],
      ),
    );
  }
}