import 'package:carrentalapp/data/models/car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapdetailspage extends StatelessWidget {
  Car car;
  Mapdetailspage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                center: LatLng(51.5, -0.09),
                zoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName:
                      'com.example.carrentalapp', // <- replace with your real app package name
                ),
              ],
            ),
            Positioned(
              // top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Cardetailscard(car: car),
            )
          ],
        ));
  }
}

Widget Cardetailscard({required Car car}) {
  return SizedBox(
    height: 350,
    child: Stack(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text('${car.model}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.directions_car, color: Colors.white),
                    SizedBox(width: 5),
                    Text("${car.distance} km",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    SizedBox(width: 10),
                    Icon(Icons.battery_full, color: Colors.white),
                    SizedBox(width: 5),
                    Text("${car.fuelcapacity}",
                        style: TextStyle(color: Colors.white, fontSize: 14))
                  ],
                )
              ],
            )),
        Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Features",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    featuresicon(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${car.pricePerHour}/2",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: Text(
                            "Book now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))),
        Positioned(
            top: 50, right: 20, child: Image.asset("assets/white_car.png"))
      ],
    ),
  );
}

Widget featuresicon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      featureicon(Icons.local_gas_station, "Diesel", "Common Rail"),
      featureicon(Icons.speed, "Acceleration", "0-100 km /s"),
      featureicon(Icons.ac_unit, "Cold", "Temp Control")
    ],
  );
}

Widget featureicon(IconData icon, String title, String subtitle) {
  return Container(
    width: 100,
    height: 100,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        Text(title),
        Text(subtitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10,
            )),
      ],
    ),
  );
}
