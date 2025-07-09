import 'package:carrentalapp/data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key , required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("car_image.png", height: 120),
            Text(car.model , style : TextStyle(fontWeight: FontWeight.bold , fontSize: 20) ) , 
            SizedBox(height :10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("png"),
                      Text("${car.distance}.toStringAsFixed(0)km")
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("pump"),
                      Text("${car.distance}.toStringAsFixed(0)km"),

                    ],
                  )
                ],
              )
            ],)
          ],
        ));
  }
}
