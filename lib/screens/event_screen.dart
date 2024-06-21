import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sport_upeu/models/match.dart';
import 'package:sport_upeu/resources/constans.dart';
import 'package:sport_upeu/screens/event_match_screen.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 0),
                child: Text(
                  'EN VIVO',
                  style: TextStyle(
                      color: Constants.primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.4,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: const EventMatchScreen(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                        width: 380,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Constants.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Constants.greyColor.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 8, right: 8, bottom: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 20, right: 20, bottom: 2),
                                    decoration: BoxDecoration(
                                        color: (matches[index].eventoPadre ==
                                                'S01'
                                            ? Constants.futsalColor
                                            : (matches[index].eventoPadre ==
                                                    'S02'
                                                ? Constants.blackColor
                                                : (matches[index].eventoPadre ==
                                                        'S03'
                                                    ? Constants.volleyColor
                                                    : Constants.otrosColor))),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Center(
                                      child: Text(
                                        matches[index].deporte,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        matches[index].estadoFase,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 2, left: 20, right: 20, bottom: 2),
                                    decoration: BoxDecoration(
                                        color: (matches[index].escenario ==
                                                'Loza 1'
                                            ? Constants.loza1Color
                                            : (matches[index].escenario ==
                                                    'Loza 2'
                                                ? Constants.loza2Color
                                                : (matches[index]
                                                            .escenario ==
                                                        'Loza 3'
                                                    ? Constants.loza3Color
                                                    : (matches[index]
                                                                .escenario ==
                                                            'Loza 4'
                                                        ? Constants.loza4Color
                                                        : (matches[index]
                                                                    .escenario ==
                                                                'Sintetica 1'
                                                            ? Constants
                                                                .sintetica1Color
                                                            : (matches[index]
                                                                        .escenario ==
                                                                    'Sintetica 2'
                                                                ? Constants
                                                                    .sintetica2Color
                                                                : Constants
                                                                    .coliseoColor)))))),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Center(
                                      child: Text(
                                        matches[index].escenario,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.whiteColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //equipos y marcador
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 40, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 90,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              matches[index].imagenEquipoA),
                                          height: 30,
                                        ),
                                        Text(
                                          matches[index].equipoA,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Constants.greyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 140,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 120,
                                          padding: const EdgeInsets.only(
                                              right: 8,
                                              left: 8,
                                              top: 8,
                                              bottom: 8),
                                          decoration: BoxDecoration(
                                              color: Constants.whiteColor,
                                              border: Border.all(
                                                  color: Constants.blackColor),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                matches[index].marcadorA,
                                                style: TextStyle(
                                                    color: Constants.blackColor,
                                                    fontSize: 32,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    matches[index].tiempo,
                                                    style: TextStyle(
                                                        color: Constants
                                                            .blackColor,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const Text("-----")
                                                ],
                                              ),
                                              Text(
                                                matches[index].marcadorB,
                                                style: TextStyle(
                                                    color: Constants.blackColor,
                                                    fontSize: 32,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              matches[index].imagenEquipoB),
                                          height: 30,
                                        ),
                                        Text(
                                          matches[index].equipoB,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Constants.greyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 32,
              crossAxisSpacing: 36,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const EventMatchScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/futsal.png',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Futsal',
                          style: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const EventMatchScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/basketball.png',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Basketball',
                          style: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const EventMatchScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/volleyball.png',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Volleyball',
                          style: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const EventMatchScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/other.png',
                          height: 80,
                          width: 80,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Otros',
                          style: TextStyle(
                              color: Constants.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
