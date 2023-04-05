import '../recipe.dart';

// Создать тестовые данные для списка рецептов

List<Recipe> getRecipes(){
  return const <Recipe>[
    Recipe(title: "Pancakes", picturePath: "assets/images/pancake.jpg", cookingTime: 77, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Длинный текст длинный текст длинный текст длинный текст длинный текст длинный текст", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Salad Caesar", picturePath: "assets/images/caesar.jpg", cookingTime: 100, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 65, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 2, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 45, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 70, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 66, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 321, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 560, ingredients: [["Ингредиент 1", "1 емкость"], ["Ингредиент 2", "1 емкость"], ["Ингредиент 3", "1 емкость"]], steps: ["Шаг 1", "Шаг 2", "Шаг 3"]),
  ];
}