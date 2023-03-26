// Подготовить структуру данных для хранения элемента списка рецептов

// Создать виджет для отображения одного элемента из списка рецептов (изображение, название, значок таймера и время приготовление)
// Создать страницу (запуск из main) для отображения прокручиваемого списка рецептов, добавить анимацию overscroll

class Recipe {
  final String title;
  final int cookingTime;
  final String picturePath;

  const Recipe({required this.title, required this.picturePath, required this.cookingTime});

  String getCookingTime() {
    if (cookingTime < 60) {
      return "$cookingTime минут";
    }
    else {
      return "${cookingTime ~/ 60} час ${cookingTime % 60} минут";
    }
  }
}
