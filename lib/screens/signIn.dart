import 'package:flutter/material.dart';
import 'package:karishye/screens/existingCustomers.dart';
import 'package:karishye/screens/common/bottomNavigation.dart';

class SignedIn extends StatefulWidget {
  const SignedIn({super.key});

  @override
  State<SignedIn> createState() => SignedInState();
}

class SignedInState extends State<SignedIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Schedule a Puja"),
            Row(
              children: const [
                Icon(Icons.notifications_none),
                Icon(Icons.search)
              ],
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 68, 2, 80),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/gopuram.png"),
                  alignment: Alignment.bottomCenter),
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 149, 146, 146)),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Image(image: AssetImage("assets/images/customer.png")),
                    Text("For New Customer",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 68, 2, 80),
                            fontSize: 24))
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 149, 146, 146)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Image(image: AssetImage("assets/images/customer.png")),
                      Text("Existing Customer",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 68, 2, 80),
                              fontSize: 24))
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const existingCustomers()));
                },
              ),
              // Container(
              //     child: Row(
              //   children: [
              //     Column(
              //       children: const [
              //         Image(image: AssetImage("assets/images/Calendar.png")),
              //         Text("Booking")
              //       ],
              //     ),
              //     Column(
              //       children: const [],
              //     )
              //   ],
              // ))
            ],
          )),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
