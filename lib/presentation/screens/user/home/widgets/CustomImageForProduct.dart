import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/shadow.dart';

class CustomImageForProduct extends StatelessWidget{
  final String image ;
  final double? imageHeight;
  final double? imageWidth;
  final double padding ;
  const CustomImageForProduct({Key? key,
    required this.image,
    this.imageHeight = 150,
    this.padding = 0 ,
    this.imageWidth = double.infinity,
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(

      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.network(
          image,
          height: imageHeight!.h,
          width: imageWidth,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          boxShadow
        ],
      ),
    ) ;
  }
}