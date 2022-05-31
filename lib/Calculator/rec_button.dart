import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Container(
          color: Colors.white,
          width: 180,
          height: 75,
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
