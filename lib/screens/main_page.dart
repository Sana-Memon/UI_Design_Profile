import 'package:flutter/material.dart';
import '../../../utils/color_constant.dart';

import 'login.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var list = [
    "Continue with Facebook",
    "Continue with Google",
    "Continue with Apple"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/images/mainImage.PNG"),
              const Text(
                "Let's you in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              customElevatedButton(list[0]),
              SizedBox(
                height: 20,
              ),
              customElevatedButton(list[1]),
              SizedBox(
                height: 20,
              ),
              customElevatedButton(list[2]),
              SizedBox(
                height: 20,
              ),
              Text("or"),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Text("Sign in with password"),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Don't have an account? sign up")
            ],
          ),
        ));
  }

  customElevatedButton(list) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstant.lightWhite,
          fixedSize: const Size(260, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      child: Row(
        children: const [
          Icon(
            Icons.facebook,
            size: 30,
            color: Colors.lightBlue,
          ),
          Text(
            'Continue with Facebook',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
