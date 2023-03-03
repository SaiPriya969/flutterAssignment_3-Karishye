import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_controller.dart';
import 'common/notificationCard.dart';
import 'common/appBar.dart';

class NotificationCarousel extends StatefulWidget {
  const NotificationCarousel({super.key});

  @override
  State<NotificationCarousel> createState() => _NotificationCarouselState();
}

class _NotificationCarouselState extends State<NotificationCarousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        // fit: StackFit.loose,
        children: [
          MyAppBar(),
          Positioned(
            top: 80,
            child: Container(
              // margin: EdgeInsets.all(20),
              child: CarouselSlider(
                items: const [
                  notificationCard(),
                  notificationCard(),
                  notificationCard(),
                  notificationCard(),
                ],
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
