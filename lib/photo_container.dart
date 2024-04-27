import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  final String photoText;
  final photoLink;

  const PhotoContainer(
      {super.key, required this.photoLink, required this.photoText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 5, 5, 10),
      child: Container(
        width: 150,
        height: 150,
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
