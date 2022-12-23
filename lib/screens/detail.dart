import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/color_constant.dart';

class DetailDescription extends StatefulWidget {
  const DetailDescription({super.key});

  @override
  State<DetailDescription> createState() => _DetailDescriptionState();
}

class _DetailDescriptionState extends State<DetailDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Details",
                style: TextStyle(fontSize: 30),
              ),
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text("Test")),
            ],
          ),
          Image.asset("../assets/images/1.png"),
          Text(
            "CRAFTMAN HOUSE",
            style: TextStyle(fontSize: 30),
          ),
          Text("520N Beaudry Ave, Los Angeles"),
          Container(
            child: Row(
              children: [
                Image.asset("../assets/icons/yellow/bed.png"),
                Text("4 beds"),
                Image.asset("../assets/icons/yellow/Vector1.png"),
                Text("4 baths"),
                Image.asset("../assets/icons/yellow/car.png"),
                Text("1 garage")
              ],
            ),
          ),
          Row(
            children: [
              Image.asset("../assets/images/man.png"),
              Column(
                children: [
                  Text(
                    "Rebecca Teetha",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Rebecca Teetha",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.cyanBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                child: Row(
                  children: [
                    Image.asset("../assets/icons/white/call.png"),
                    Text("Call"),
                  ],
                ),
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley")
            ],
          )
        ],
      ),
    );
  }
}
