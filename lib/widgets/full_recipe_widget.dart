// TODO: Создать виджет для визуализации рецепта

import 'dart:ffi';

import 'package:flutter/material.dart';

import '../recipe.dart';

class FullRecipeWidget extends StatefulWidget {
  const FullRecipeWidget({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<FullRecipeWidget> createState() => _FullRecipeWidgetState();
}

class _FullRecipeWidgetState extends State<FullRecipeWidget> {

  bool isLiked = false;

  void setLike () {
    //TODO: переключение иконки лайка
    setState(() {
      isLiked = !isLiked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text("Название"),
            const Text("Время"),
            Image.asset("Картинка"),
            const Text("игридиенты"),
          ],
        )
      ),
    );
  }
}
