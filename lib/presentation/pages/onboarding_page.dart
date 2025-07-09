import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2c2b34),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                image: AssetImage("assets/onboarding.png"),
                fit: BoxFit.cover,
              ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Expanded(
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Premium cars  \n enjoy the luxury ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Rent a car with us and enjoy the luxury of driving a premium car.",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 54,
                      width: 318,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                        child: Text(
                          "Let\'s Go",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
