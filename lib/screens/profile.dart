import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design/screens/detail.dart';

import '../utils/color_constant.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        "Fill Your Profile",
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.left,
      ),
      Image.asset("../assets/images/profile.png"),
      Container(
        margin: EdgeInsets.all(7),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: 'Full Name',
        )),
      ),
      Container(
        margin: EdgeInsets.all(7),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: 'NickName',
        )),
      ),
      Container(
        margin: EdgeInsets.all(7),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: 'Date of Birth',
        )),
      ),
      Container(
        margin: EdgeInsets.all(7),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: 'Email',
        )),
      ),
      Container(
        margin: EdgeInsets.all(7),
        child: TextField(
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          hintText: 'Gender',
        )),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailDescription()),
          );
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstant.lightBlue,
            fixedSize: const Size(300, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    ])));
  }
}
