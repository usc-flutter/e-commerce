import 'package:e_commerce/app/modules/nav/views/nav_view.dart';
import 'package:e_commerce/app/modules/signUpScreen/views/sign_up_screen_view.dart';
import 'package:e_commerce/const/k_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../widgets/k_input_text_field.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Hero(
          tag: "Login",
          transitionOnUserGestures: true,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      KImagePath.basket,
                      width: Get.width / 2,
                    ),
                    10.verticalSpace,
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      "Login to your existing account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    20.verticalSpace,
                    KInputTextField(
                      icon: Icons.person,
                      isPassword: false,
                      hintText: "User Name or Email",
                    ),
                    20.verticalSpace,
                    KInputTextField(
                      icon: Icons.lock,
                      isPassword: true,
                      hintText: "Password",
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Password")),
                        20.horizontalSpace
                      ],
                    ),
                    20.verticalSpace,
                    ElevatedButton(
                      onPressed: () {
                        Get.offAll(() => const NavView());
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.h, vertical: 15.h),
                          backgroundColor: Colors.green),
                      child: const Text("SignIn"),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have a account"),
                        TextButton(
                            onPressed: () {
                              Get.to(() => const SignUpScreenView());
                            },
                            child: const Text("SignUp"))
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
