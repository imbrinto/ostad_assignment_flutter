import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;
  final String photoText;
  final photoLink;

  const PhotoContainer(
      {super.key,
      required this.photoLink,
      this.photoText = '',
      this.containerWidth = 150,
      this.containerHeight = 150});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 5, 5, 10),
      child: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          image: photoLink,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Container(
          alignment: const Alignment(-0.7,0.78),
          child: Text(
            photoText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
