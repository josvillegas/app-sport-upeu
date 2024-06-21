import 'package:flutter/material.dart';
import 'package:sport_upeu/models/match.dart';
import 'package:sport_upeu/resources/constans.dart';
import 'package:sport_upeu/screens/fixture_detail_match_screen.dart';

class FixtureWidget extends StatefulWidget {
  const FixtureWidget({super.key});

  @override
  State<FixtureWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FixtureWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: List.generate(
          matches.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FixtureDetailMatchScreen(
                                match: matches[index]))),
                    child: Container(
                      width: 380,
                      height: 200,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 2, left: 20, right: 20, bottom: 2),
                                  decoration: BoxDecoration(
                                      color: (matches[index].eventoPadre ==
                                              'S01'
                                          ? Constants.futsalColor
                                          : (matches[index].eventoPadre == 'S02'
                                              ? Constants.blackColor
                                              : (matches[index].eventoPadre ==
                                                      'S03'
                                                  ? Constants.volleyColor
                                                  : Constants.otrosColor))),
                                      borderRadius: BorderRadius.circular(12)),
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
                                    Container(
                                      padding: const EdgeInsets.only(
                                          top: 2,
                                          left: 20,
                                          right: 20,
                                          bottom: 2),
                                      decoration: BoxDecoration(
                                          color: Constants.enesperaColor,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Center(
                                        child: Text(
                                          matches[index].estadoTiempo,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Constants.blackColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      matches[index].genderMatch,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Constants.greyColor,
                                      ),
                                    ),
                                    Text(
                                      matches[index].genderCategoria,
                                      style: TextStyle(
                                        fontSize: 12,
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
                                          : (matches[index]
                                                      .escenario ==
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
                                      borderRadius: BorderRadius.circular(12)),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  matches[index].tiempo,
                                                  style: TextStyle(
                                                      color:
                                                          Constants.blackColor,
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
                                                  fontWeight: FontWeight.bold),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                )
              ],
            ),
          ),
        )));
  }
}
