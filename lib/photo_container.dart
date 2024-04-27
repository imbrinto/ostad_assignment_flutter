import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  final photoLink;
  const PhotoContainer({super.key, required this.photoLink,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
      child: Container(
        width: 155,
        height: 155,
        child: Container(),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
          image: photoLink,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.35),
              spreadRadius: 4,
              blurRadius: 5,
              offset: Offset(0, 4),
            )
          ],

        ),
      ),
    );
  }
}
  
