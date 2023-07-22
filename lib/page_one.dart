import 'package:flutter/material.dart';
import 'package:flutter_application_5/wiget.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top part of the screen with red background
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row with user information
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome!",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "Ranveer s rajput",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Icon(
                          Icons.add_alert_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Search container
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Enter 10 digital track number"),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Row with FirstContainers widgets
                  const Row(
                    children: [
                      FirstContainers(
                          icon: Icons.inventory, text: 'Send parcel'),
                      SizedBox(
                        width: 10,
                      ),
                      FirstContainers(
                          icon: Icons.local_offer, text: "Price Check"),
                      SizedBox(
                        width: 10,
                      ),
                      FirstContainers(
                          icon: Icons.location_on, text: "track order")
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Space between the top and bottom part of the screen
          const SizedBox(
            height: 10,
          ),
          // Bottom part of the screen
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Faster Delivery container
                Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 225, 169, 165),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 65, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row with "FASTER DELIVERY" and "TRUSTED PARTNER" text
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "FASTER",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromARGB(255, 12, 2, 91)),
                                ),
                                Text(
                                  "DELIVERY",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 22, 58),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "TRUSTED",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromARGB(255, 12, 2, 91)),
                                ),
                                Text(
                                  "PARTNER",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 22, 58),
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Text "Are you ready for send your Parcle"
                        Text(
                          "Are you ready for send your \nParcel",
                          style:
                              TextStyle(color: Color.fromARGB(255, 5, 15, 23)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // DeliveryContainer for Domestic and International options
                const DeliveryContainer(
                    text1: "Domestic",
                    text2: "International",
                    icon1: Icons.car_rental,
                    icon2: Icons.flight,
                    text: "Delivery Type"),
                const SizedBox(
                  height: 15,
                ),
                // DeliveryContainer for Home and Work options
                const DeliveryContainer(
                    text1: "Home",
                    text2: "Work\nset Address",
                    icon1: Icons.home,
                    icon2: Icons.work_outline_rounded,
                    text: "Pick Your Locations")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
