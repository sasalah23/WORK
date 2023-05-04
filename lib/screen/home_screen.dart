import 'package:flutter/material.dart';
import 'colors.dart';
import 'categorie_section.dart';

class HomeScreen extends StatelessWidget {
  List catNames = ["map", "profile"];
  List<Icon> catIcons = [
    const Icon(Icons.map, color: dColor, size: 15),
    const Icon(Icons.tab, color: dColor, size: 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 38, 170, 20),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      aColor.withOpacity(0.8),
                      aColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("images/Nadif.jpg"),
                              ),
                              Icon(
                                Icons.notifications_outlined,
                                color: aColor,
                                size: 30,
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "hicostummer",
                            style: TextStyle(
                              color: dColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "we help you to find the offer you need",
                            style: TextStyle(
                              color: dColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15, bottom: 20),
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: aColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                // ignore: prefer_const_constructors
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  spreadRadius: 3,
                                ),
                              ],
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "search",
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Annonces",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: aColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catNames.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 15),
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                    color: bColor,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: dColor,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ]),
                                child: Center(
                                  child: catIcons[index],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                catNames[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: dColor.withOpacity(0.7),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "categorie",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: dColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    CategorieSection(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
