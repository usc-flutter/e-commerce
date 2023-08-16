import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class KInputTextField extends StatefulWidget {
  const KInputTextField(
      {super.key,
      required this.icon,
      required this.hintText,
      required this.isPassword,
      this.isMail = false,
      this.textEditingController});
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final bool isMail;
  final TextEditingController? textEditingController;

  @override
  State<KInputTextField> createState() => _KInputTextFieldState();
}

class _KInputTextFieldState extends State<KInputTextField> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Colors.grey)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        5.horizontalSpace,
        Icon(
          widget.icon,
          color: Colors.grey,
        ),
        5.horizontalSpace,
        SizedBox(
            width: widget.isPassword == true
                ? Get.width - 150.w
                : Get.width - 100.w,
            child: TextFormField(
              obscureText: widget.isPassword == true ? showPassword : false,
              controller: widget.textEditingController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field is requird";
                }
                if (widget.isMail) {
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value);

                  if (emailValid) {
                    return null;
                  } else {
                    return "Please Enter a valid Email!";
                  }
                }
                if (widget.isPassword) {
                  if (value.length < 8) {
                    return null;
                  } else {
                    return "Password most be 8 charecters";
                  }
                }
                return null;
              },
            )),
        widget.isPassword
            ? IconButton(
                onPressed: () => setState(() {
                      showPassword = !showPassword;
                    }),
                icon: showPassword
                    ? const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      ))
            : const SizedBox()
      ]),
    );
  }
}
