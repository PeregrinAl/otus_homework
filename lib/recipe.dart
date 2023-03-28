
class Recipe {
  final String title;
  final int cookingTime;
  final String picturePath;
  final Map<String, String> ingredients;
  final List<String> steps;

  const Recipe({required this.title, required this.picturePath,
    required this.cookingTime, required this.ingredients, required this.steps});

  String getCookingTime() {
    if (cookingTime < 60) {
      return "$cookingTime минут";
    }
    else {
      return "${cookingTime ~/ 60} час ${cookingTime % 60} минут";
    }
  }
}
