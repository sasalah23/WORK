import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/annonce_screen.dart';
import 'colors.dart';

class CategorieSection extends StatelessWidget {
  List dechet = [
    "dechet1",
    "dechet2",
    "dechet3",
    "dechet4",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xfff2f8ff),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: dColor,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AnnonceScreen(
                                          dechet: "${dechet[index]}",
                                        ),
                                      ));
                                },
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image.asset(
                                    "images/${dechet[index]}.jpg",
                                    height: 100,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(dechet[index],
                                            style: const TextStyle(
                                                fontSize: 8,
                                                color: dColor,
                                                fontWeight: FontWeight.w500)),
                                        Row()
                                      ])),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
