import 'package:client/core/theme/app_palette.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 46),
            ),
            SizedBox(height: 30),
            CustomField(controller: nameController, hintText: 'Name'),
            SizedBox(height: 15),
            CustomField(controller: emailController, hintText: 'Email'),
            SizedBox(height: 15),
            CustomField(
              controller: passwordController,
              hintText: 'Password',
              isobscure: true,
            ),
            SizedBox(height: 20),
            AuthGradientButton(),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'Already have an account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Pallete.gradient2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
