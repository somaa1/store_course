import 'package:flutter/material.dart';
import '../../../../core/constants.dart';
import '../../../../core/resources/manager_font_family.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/routes.dart';
import '../../../core/resources/manager_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: Constants.splashTime,
      ),
      () {
        Navigator.pushReplacementNamed(context, Routes.mainScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              ManagerColors.primaryColor,
              ManagerColors.primaryColor2,
              ManagerColors.primaryColor3,
            ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd)),
        child: Text(
          ManagerStrings.appName,
          style: TextStyle(
            color: ManagerColors.white,
            fontSize: ManagerFontSizes.s26,
            fontWeight: ManagerFontWeight.w600,
            fontFamily: ManagerFontFamily.appFont
          ),
        ),

      ),
    );
  }
}
