import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage("assets/onboarding1.png"),
            //       fit: BoxFit.cover,

            //     )
            //   )

            // ),
            Container(
                child: Column(
              children: [
                Text(
                  " Premium cars  \n enjoy the luxury ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rent a car with us and enjoy the luxury of driving a premium car. Our fleet includes the latest models from top brands, ensuring you have a comfortable and stylish ride.",
                ),
                SizedBox(
                  height: 54,
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "Let\'s Go",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
