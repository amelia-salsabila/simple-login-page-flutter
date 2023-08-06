import 'package:flutter/material.dart';
import 'package:untitled/const.dart';
import 'package:untitled/component/my_textfield.dart';
import 'package:untitled/component/my_button.dart';
import 'package:untitled/component/square_tile.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  get usernameController => null;

  get passwordController => null;

  get signUserIn => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.lock,
                color: Color(0xffeba5ff),
                size: 50,
              ),
              
              Text("Welcome Back!!",
                style:
                textTextStyle.copyWith(
                    color: Colors.white70,
                    fontSize: 30, fontWeight: bold),
              ),
              SizedBox(height: 11),
              Text(
                "Please, Login",
                style: secondaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: '  Username ',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: '  Password ',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 12,),
                      Text("Sign in with Google", style: blackTextStyle.copyWith(fontWeight: bold),),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an account yet ?", style: secondaryTextStyle.copyWith(fontSize: 12),),
                  Text("Sign in", style: tncTextStyle.copyWith(fontSize: 12),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}