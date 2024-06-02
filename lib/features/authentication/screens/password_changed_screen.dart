import 'package:flutter/material.dart';
import 'package:boarding_house_management/utils/color_constants.dart';
import 'package:boarding_house_management/utils/text_style_constatnts.dart';
import 'package:boarding_house_management/commons/widgets/login_button.dart';
import 'package:boarding_house_management/features/authentication/screens/login_screen.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryWhiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: ColorConstants.primaryColor,
                child: Icon(
                  Icons.done,
                  size: 60,
                  color: ColorConstants.primaryWhiteColor,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                "Password Changed !",
                style: TextStyleConstants.loginTiltle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your new password must be unique from those\n previously used",
                textAlign: TextAlign.center,
                style: TextStyleConstants.loginSubtitle1,
              ),
              const SizedBox(
                height: 70,
              ),
              LoginButton(
                buttonName: "Back to login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
