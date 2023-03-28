import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'data/constants.dart';

// TODO: Реализовать переключение кнопки "Избранное"
// TODO: Реализовать отметку шагов приготовления (checkbox)
// TODO: Возможность добавить комментарий к рецепту (текстовое поле + кнопка + изменение состояния)

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
      home: const HomeScreen(),
    );
  }
}