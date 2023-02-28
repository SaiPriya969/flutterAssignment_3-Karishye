import 'package:flutter/material.dart';
import 'package:karishye/screens/common/customerCard.dart';
import 'package:karishye/screens/common/bottomNavigation.dart';

class existingCustomers extends StatefulWidget {
  const existingCustomers({super.key});

  @override
  State<existingCustomers> createState() => existingCustomersState();
}

class existingCustomersState extends State<existingCustomers> {
  bool value1 = true;
  String customerName = "";
  String customerLocation = "";
  bool val1 = false, val2 = true, val3 = false, val4 = false;
  List<bool> lst = [true, false, false, false];
  // List<List> listItems = [
  //   ["Ramesh", false],
  //   ["Ramesh", false],
  //   ["Ramesh", true],
  //   ["Ramesh", false]
  // ];
  // bool isChecked = false;

  // onChanged(val, ind) {
  //   setState(() {
  //     // print(val);
  //     listItems[ind][1] = val;
  //   });

  //   // print('Checkbo is clicked');
  // }
  onChanged(ind, val) {
    setState(() {
      // print(val);
      lst[ind] = val;
    });

    // print('Checkbo is clicked');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Existing Customers"),
            Row(
              children: const [
                Icon(Icons.notifications_none),
                Icon(Icons.search)
              ],
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 68, 2, 80),
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
          // child: ListView.builder(
          //   itemCount: listItems.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return CustomerCard(
          //       value1: listItems[index][1],
          //       customerName: listItems[index][0],
          //       customerLocation: "Gachibowli",
          //       onChange: (value) => onChanged(value, index),
          //     );
          //   },
          // ),
          child: Column(
            children: [
              CustomerCard(
                value1: lst[0],
                customerName: "Ramesh",
                customerLocation: "Gachibowli",
                onChange: (value) => onChanged(0, value),
              ),
              CustomerCard(
                value1: lst[1],
                customerName: "Suresh",
                customerLocation: "Gachibowli",
                onChange: (value) => onChanged(1, value),
              ),
              CustomerCard(
                value1: lst[2],
                customerName: "Suresh",
                customerLocation: "Gachibowli",
                onChange: (value) => onChanged(2, value),
              ),
              CustomerCard(
                value1: lst[3],
                customerName: "Suresh",
                customerLocation: "Gachibowli",
                onChange: (value) => onChanged(3, value),
              ),
            ],
          )),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
