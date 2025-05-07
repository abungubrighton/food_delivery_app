import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/vanilla_button.dart';
import 'package:food_delivery_app/components/vanilla_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 10),
            // Message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 10),
            // Email text field
            VanillaTextfield(
              hintText: "Enter Email",
              controller: emailController,
            ),
            SizedBox(height: 15),
            // Password text field
            VanillaTextfield(
              hintText: "Enter Password",
              controller: passwordController,
              obscureText: true,
            ),
            SizedBox(height: 15),
            // Login button
            VanillaButton(label: "Login", onTap: () {}),
            SizedBox(height: 15),
            // Not a member? Sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Register now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
