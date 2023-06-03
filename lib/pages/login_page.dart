import 'package:flutter/material.dart';
import 'package:wall_social_media_app_flutter/components/my_button.dart';
import 'package:wall_social_media_app_flutter/components/my_textfield.dart';
import 'package:wall_social_media_app_flutter/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome Back! You\'ve been missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                      ),
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                          color: Color(0xFF616161),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: "assets/images/google.png",
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(
                    imagePath: "assets/images/apple.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Color(0xFF616161)
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
