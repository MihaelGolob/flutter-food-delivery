import 'package:flutter/material.dart';
import 'package:food_delivery/components/general/dove_button.dart';
import 'package:food_delivery/components/general/dove_text_field.dart';
import 'package:food_delivery/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTapRegister;

  const LoginPage({super.key, this.onTapRegister});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn() {
    // todo: auth
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

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
              "DoveLivery",
              style: TextStyle(fontSize: 25, color: theme.inversePrimary),
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
            const SizedBox(height: 25),

            // sign in button
            DoveButton(text: 'Sign In', onTap: signIn),
            const SizedBox(height: 10),

            // sign up text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style: TextStyle(color: theme.inversePrimary),
                ),
                GestureDetector(
                  onTap: widget.onTapRegister,
                  child: Text(
                    'Register now',
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
