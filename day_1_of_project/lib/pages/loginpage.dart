import 'package:day_1_of_project/components/my_button.dart';
import 'package:day_1_of_project/components/my_text_field.dart';
import 'package:day_1_of_project/components/square_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Loginpage());
}

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final usernamecontroller = TextEditingController();
  final passwordController = TextEditingController();

  void signuser() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 202, 202),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Icon(Icons.lock, size: 200, color: Colors.black),
              const SizedBox(height: 50),
              const Text(
                'Welcome back ',
                style: TextStyle(
                    color: Color.fromARGB(255, 54, 54, 54), fontSize: 16),
              ),
              const SizedBox(height: 60),
              MyTextField(
                controller: usernamecontroller,
                hintText: 'username',
                obscureText: false,
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      "forget password?",
                      style: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: signuser,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        "Or contiune with",
                        style:
                            TextStyle(color: Color.fromARGB(255, 82, 80, 80)),
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
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagepath: 'lib/images/apple-logo.png',
                  ),
                  SizedBox(width: 25),
                  SquareTile(
                    imagepath: 'lib/images/google.png',
                  )
                ],
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Color.fromARGB(255, 90, 88, 88)),
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Reegister Now!",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
