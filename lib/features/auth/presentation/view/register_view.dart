import 'package:flutter/material.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../route/routes.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _userNameTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _confirmPasswordTextEditingController;
  late TextEditingController _phoneTextEditingController;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _confirmPasswordTextEditingController = TextEditingController();
    _userNameTextEditingController = TextEditingController();
    _phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
    _userNameTextEditingController.dispose();
    _phoneTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: AlignmentDirectional.centerStart,
          margin: const EdgeInsets.symmetric(horizontal: ManagerWidth.w50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(
                flex: 2,
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  ManagerStrings.signUp.toUpperCase(),
                  style: TextStyle(
                    color: ManagerColors.black,
                    fontSize: ManagerFontSizes.s36,
                    fontWeight: ManagerFontWeight.w600,
                  ),
                ),
              ),
              Spacer(),
              TextField(
                controller: _userNameTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.username,
                  labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.grayLight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              SizedBox(height: ManagerHeight.h16),
              TextField(
                controller: _emailTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.email,
                  labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.grayLight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: ManagerHeight.h16),
              TextField(
                controller: _phoneTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.phone,
                  labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.gray),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.grayLight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: ManagerHeight.h16),
              TextField(
                controller: _passwordTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.password,
                  labelStyle: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    color: ManagerColors.gray,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.grayLight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const SizedBox(height: ManagerHeight.h16),
              TextField(
                controller: _confirmPasswordTextEditingController,
                cursorColor: ManagerColors.primaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: ManagerStrings.confirmPassword,
                  labelStyle: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    color: ManagerColors.gray,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.grayLight),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: ManagerColors.primaryColor),
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Row(
                children: [
                  Text(
                    ManagerStrings.alreadyHaveAccount,
                    style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s16,
                    ),
                  ),
                  const SizedBox(width: ManagerWidth.w6),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Routes.loginView);
                    },
                    child: Text(
                      ManagerStrings.signIn,
                      style: const TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              BaseButton(
                onPressed: () {},
                title: ManagerStrings.register,
                textStyle: TextStyle(
                  color: ManagerColors.white,
                  fontSize: ManagerFontSizes.s16,
                ),
                spacerFlex: 4,
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ));
  }
}
