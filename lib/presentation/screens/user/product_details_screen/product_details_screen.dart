import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/product_details_screen/widgets/product_details_screen_body.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';

class ProductDetailsScreen extends StatelessWidget{
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recievedData = ModalRoute.of(context)!.settings.arguments as Map ;
    return Container(
      color: AppColor.mainColor,
      child: SafeArea(
        child: Scaffold(
          body: ProductDetailsScreenBody(product: recievedData['product']),
        ),
      ),
    );
  }
}