import 'package:flutter/material.dart';

class SocialMediaItem extends StatelessWidget {
  final String image;

  const SocialMediaItem({Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25),
      elevation: 10,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        child: Image.asset(image,),
      ),
    );
  }
}