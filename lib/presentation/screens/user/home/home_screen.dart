import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/business_logic/global_cubit/global_cubit.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/home/widgets/home_screen_body.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    GlobalCubit.get(context).GetAllProducts();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.mainColor,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: HomeScreenBody(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(
              Icons.home,
            ),
            onPressed: (){},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}