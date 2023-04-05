import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final IconData iconData;
  final Color color;

  const FavoriteButton(
      {required this.iconData, required this.color, super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTapDown: (TapDownDetails details) {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Icon(
        widget.iconData,
        color: _isPressed ? widget.color : Colors.black54,
      ),
    );
  }
}