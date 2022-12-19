import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/screens/profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool? check1 = false, check2 = true, check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email Address',
                )),
            const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                )),
            Row(
              children: [
                Checkbox(
                    //only check box
                    value: check1, //unchecked
                    onChanged: (bool? value) {
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    }),
                const Text("Remember Me")
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign in"),
            ),
            Text("Forgot the Password"),
            Text("or continue with"),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("data")),
                ElevatedButton(onPressed: () {}, child: const Text("data")),
                ElevatedButton(onPressed: () {}, child: const Text("data")),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: const Text("Don't have an account? Sign up")),
          ],
        ),
      ),
    );
  }
}
