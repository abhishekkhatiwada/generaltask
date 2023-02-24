import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.color,
    required this.image,
    required this.name,
    this.row = false,
  });

  final Color color;
  final String image;
  final String name;
  final bool row;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 7,
        left: 7,
      ),
      margin: const EdgeInsets.all(8),
      alignment: Alignment.center,
      height: 130,
      width: row ? 440 : 213,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 20.0,
              spreadRadius: 0.1),
        ],
        color: color,
      ),
      child: row
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 62,
                  image: AssetImage(
                    image,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 62,
                  image: AssetImage(
                    image,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
