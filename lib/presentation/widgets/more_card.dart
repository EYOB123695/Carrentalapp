import 'package:carrentalapp/data/models/car.dart';
import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  final Car car;
  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xff212020),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car.model,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(Icons.directions_car, size: 16, color: Colors.white),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "> ${car.distance} km",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.battery_full, color: Colors.white, size: 16),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        car.fuelcapacity.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 24)
            ],
          )),
    );
  }
}
