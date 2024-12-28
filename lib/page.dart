import 'package:flutter/material.dart';
import 'package:ui/widgets/description.dart';
import 'package:ui/widgets/icon.dart';
import 'package:ui/widgets/rating_star.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: const Center(
                        child: Text("Strawberry Pavlova",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 150,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        child: Description()),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          RatingStar(),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            '170 Reviews',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.5,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 135,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: const IconSection(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                "assets/image.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
