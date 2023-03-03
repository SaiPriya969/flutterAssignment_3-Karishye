import 'package:flutter/material.dart';

class notificationCard extends StatefulWidget {
  const notificationCard({super.key});

  @override
  State<notificationCard> createState() => _notificationCardState();
}

class _notificationCardState extends State<notificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 69, 21, 77),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  const Image(image: AssetImage("assets/images/person.png")),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: const [
                        Text(
                          "Ramesh",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Gachibowli",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("ACCEPT"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              )
            ]),
            Row(
              children: const [
                Image(image: AssetImage("assets/images/Work.png")),
                Text(
                  "Wants to do Satyanarayan Katha for his Home",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Image(image: AssetImage("assets/images/Calendar.png")),
                    Text(
                      "16 April 2022",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Image(image: AssetImage("assets/images/Time Circle.png")),
                    Text(
                      "9AM to 12PM",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
