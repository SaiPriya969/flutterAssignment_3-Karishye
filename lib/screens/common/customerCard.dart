import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomerCard extends StatefulWidget {
  var customerName;

  var customerLocation;
  var value1;
  Function(bool?)? onChange;
  CustomerCard({
    super.key,
    this.value1,
    this.customerName,
    this.customerLocation,
    required this.onChange,
  });

  @override
  State<CustomerCard> createState() => _CustomerCardState();
}

class _CustomerCardState extends State<CustomerCard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromARGB(255, 140, 138, 136)))
            // border: Border.all(width: 2)
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const Image(image: AssetImage("assets/images/person.png")),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Text(widget.customerName),
                    Text(widget.customerLocation),
                  ],
                ),
              )
            ]),
            Checkbox(
              value: widget.value1,
              onChanged: widget.onChange,
              shape: CircleBorder(),
              activeColor: Color.fromARGB(255, 69, 21, 77),
            )
          ],
        ),
      )
    ]);
  }
}
