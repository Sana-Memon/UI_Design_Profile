import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/mainImage.PNG"),
              Text("Let's you in"),
              ElevatedButton(
                onPressed: () {},
                child: Text("Continue with facebook"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Continue with google"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Continue with Apple"),
              ),
              Text("or"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Text("Sign in with password"),
              ),
              Text("Don't have an account? sign up")
            ],
          ),
        ));
  }
}
