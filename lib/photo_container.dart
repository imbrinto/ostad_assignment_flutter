import 'package:flutter/material.dart';

class PhotoContainer extends StatelessWidget {
  final photoLink;
  const PhotoContainer({super.key, required this.photoLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
        image: photoLink,
      ),
    );
  }
}
  
