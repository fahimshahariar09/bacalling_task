import 'package:bdcalling_task/task/controller/ui_controller/sign_in.dart';
import 'package:bdcalling_task/task/view/common_widget/common_button.dart';
import 'package:bdcalling_task/task/view/screen/widget/email_text_field.dart';
import 'package:bdcalling_task/task/view/screen/widget/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Form(
              key: signInController.formKey,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  EmailTextField(
                    emailController: signInController.emailController,
                  ),
                  SizedBox(height: 10),
                  PasswordTextField(
                    passwordController: signInController.passwordController,
                  ),
                  SizedBox(height: 15),
                  Obx(
                        () => signInController.isLoading.isFalse
                        ? CommonButton(
                        buttonName: "Sign In",
                        onTap: () {
                          if (!signInController.formKey.currentState!
                              .validate()) {
                            return;
                          }
                          signInController.signInFun();
                        })
                        : const CircularProgressIndicator(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
