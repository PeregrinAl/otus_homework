
class Recipe {
  final String title;
  final int cookingTime;
  final String picturePath;
  final List<List<String>> ingredients;
  final List<String> steps;

  const Recipe({required this.title, required this.picturePath,
    required this.cookingTime, required this.ingredients, required this.steps});

  List<String>getCookingTime() {
    int hours = cookingTime~/60;
    int minutes = cookingTime % 60;

    List<String> result = [];

    if (hours > 0) {
      result.add("$hours");
    }

    result.add("$minutes");

    return result;
}
}
