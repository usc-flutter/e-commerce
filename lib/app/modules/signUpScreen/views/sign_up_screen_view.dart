import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../const/k_image_path.dart';
import '../../../../widgets/k_input_text_field.dart';
import '../controllers/sign_up_screen_controller.dart';

class SignUpScreenView extends GetView<SignUpScreenController> {
  const SignUpScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Hero(
          tag: "signUp",
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
                      "Register!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      "Create your new account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    20.verticalSpace,
                    KInputTextField(
                      icon: Icons.person,
                      isPassword: false,
                      hintText: "Full Name",
                    ),
                    20.verticalSpace,
                    KInputTextField(
                      icon: Icons.mail,
                      isPassword: false,
                      isMail: true,
                      hintText: "Email",
                    ),
                    20.verticalSpace,
                    KInputTextField(
                      icon: Icons.lock,
                      isPassword: true,
                      hintText: "Password",
                    ),
                    20.verticalSpace,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.h, vertical: 15.h),
                          backgroundColor: Colors.green),
                      child: const Text("SignUp"),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have a account"),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("SignIn"))
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
