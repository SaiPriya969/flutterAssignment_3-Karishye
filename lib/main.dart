import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karishye/screens/signIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),

      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Karishye"));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: double.infinity,

        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/gopuram.png"),
                alignment: Alignment.bottomCenter),
            gradient: LinearGradient(
                colors: [Colors.white, Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'Sign in to access all the important puja material and puja sessions',
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                    color: Color(0xFF736A6F),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Enter mobile no."),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Submit"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignedIn()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 68, 2, 80),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                  ),
                  Text(
                    "SIGNUP",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
