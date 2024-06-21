import 'package:flutter/material.dart';
import 'package:sport_upeu/models/match.dart';
import 'package:sport_upeu/resources/constans.dart';

class FixtureDetailMatchScreen extends StatefulWidget {
  final Match match;
  const FixtureDetailMatchScreen({super.key, required this.match});

  @override
  State<FixtureDetailMatchScreen> createState() =>
      _EventSportMatchScreenState();
}

class _EventSportMatchScreenState extends State<FixtureDetailMatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          widget.match.padre == 'E01'
              ? 'Aniversario UPeU'
              : (widget.match.padre == 'E02'
                  ? 'Inter Iglesias'
                  : (widget.match.padre == 'E03'
                      ? 'Inter Instituciones'
                      : 'COPA JAVU')),
          style: TextStyle(
              color: Constants.whiteColor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Constants.primaryColor,
        iconTheme: IconThemeData(color: Constants.whiteColor),
      ),
      backgroundColor: Constants.whiteColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Text(
                  widget.match.deporte,
                  style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 380,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Constants.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Constants.greyColor.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
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
                                    color: (widget.match.escenario == 'Loza 1'
                                        ? Constants.loza1Color
                                        : (widget.match.escenario == 'Loza 2'
                                            ? Constants.loza2Color
                                            : (widget.match.escenario == 'Loza 3'
                                                ? Constants.loza3Color
                                                : (widget.match.escenario ==
                                                        'Loza 4'
                                                    ? Constants.loza4Color
                                                    : (widget.match.escenario ==
                                                            'Sintetica 1'
                                                        ? Constants
                                                            .sintetica1Color
                                                        : (widget.match
                                                                    .escenario ==
                                                                'Sintetica 2'
                                                            ? Constants
                                                                .sintetica2Color
                                                            : Constants
                                                                .coliseoColor)))))),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    widget.match.escenario,
                                    //widget.match.deporte,
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
                                    widget.match.estadoFase,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.greyColor,
                                    ),
                                  ),
                                  Text(
                                    widget.match.genderMatch,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.greyColor,
                                    ),
                                  ),
                                  Text(
                                    widget.match.genderCategoria,
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
                                    color: (widget.match.estadoTiempoId ==
                                            'ET01'
                                        ? Constants.envivoColor
                                        : (widget.match.estadoTiempoId == 'ET02'
                                            ? Constants.finalizadoColor
                                            : Constants.enesperaColor)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Text(
                                    widget.match.estadoTiempo,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Constants.blackColor,
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
                                          widget.match.imagenEquipoA),
                                      height: 30,
                                    ),
                                    Text(
                                      widget.match.equipoA,
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
                                          right: 8, left: 8, top: 8, bottom: 8),
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
                                            widget.match.marcadorA,
                                            style: TextStyle(
                                                color: Constants.blackColor,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                widget.match.tiempo,
                                                style: TextStyle(
                                                    color: Constants.blackColor,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text("-----")
                                            ],
                                          ),
                                          Text(
                                            widget.match.marcadorB,
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
                                          widget.match.imagenEquipoB),
                                      height: 30,
                                    ),
                                    Text(
                                      widget.match.equipoB,
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
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
