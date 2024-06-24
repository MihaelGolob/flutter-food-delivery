import 'package:flutter/material.dart';
import 'package:food_delivery/components/general/dove_button.dart';
import 'package:food_delivery/components/general/dove_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTapLogin;

  const RegisterPage({super.key, this.onTapLogin});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // lock logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: theme.inversePrimary,
            ),
            const SizedBox(height: 10),

            // message
            Text(
              "Let's create an account for you",
              style: TextStyle(fontSize: 20, color: theme.inversePrimary),
            ),
            const SizedBox(height: 25),

            // email text field
            DoveTextField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 10),

            // password text field
            DoveTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),

            DoveTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm password',
              obscureText: true,
            ),
            const SizedBox(height: 25),

            // sign up button
            DoveButton(text: 'Sign up', onTap: () {}),
            const SizedBox(height: 10),

            // go to login text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(color: theme.inversePrimary),
                ),
                GestureDetector(
                  onTap: widget.onTapLogin,
                  child: Text(
                    'Login here.',
                    style: TextStyle(
                      color: theme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
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
