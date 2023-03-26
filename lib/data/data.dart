import '../recipe.dart';

// Создать тестовые данные для списка рецептов

List<Recipe> getRecipes(){
  return const <Recipe>[
    Recipe(title: "Pancakes", picturePath: "assets/images/pancake.jpg", cookingTime: 50),
    Recipe(title: "Salad Caesar", picturePath: "assets/images/caesar.jpg", cookingTime: 100),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
    Recipe(title: "Something delicious", picturePath: "assets/images/void_image.png", cookingTime: 10),
  ];
}