import 'package:flutter/material.dart';

recipeTitle(String text) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 20, top: 40, bottom: 20),
    child: Text(text,
      maxLines: 2,
      style: const TextStyle(
          overflow: TextOverflow.ellipsis,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 22,
          color: Colors.black
      ),
    ),
  );
}

cookingTimeText(String text) {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 10, bottom: 10),
        child: Icon(Icons.access_time),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Text(text,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color.fromARGB(255, 46, 204, 112),
          ),
        ),
      ),
    ],
  );
}