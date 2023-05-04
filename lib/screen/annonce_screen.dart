import 'package:flutter/material.dart';
import 'colors.dart';
import 'formulaire.dart';

class AnnonceScreen extends StatelessWidget {
  String dechet;
  AnnonceScreen({required this.dechet});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xFFD9E4EE),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/$dechet.jpg",
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: cColor,
                            size: 28,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_outline,
                              color: cColor,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      dechet,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: dColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "annonce",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: dColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Annonce(),
                ],
              ),
            ),
          ]),
        ));
  }
}
