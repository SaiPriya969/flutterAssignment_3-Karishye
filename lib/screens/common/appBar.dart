import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        height: 200,
        color: const Color.fromARGB(255, 68, 2, 80),
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.notifications_none, color: Colors.white),
                Icon(
                  Icons.search,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 244, 241, 245),
      // toolbarHeight: 200,
      automaticallyImplyLeading: false,
    );
  }
}
