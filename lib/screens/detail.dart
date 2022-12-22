import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
          Center(
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
          )
        ],
      ),
    );
  }
}
