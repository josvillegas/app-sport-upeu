import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

const primaryColor = Color(0xFF001429);
const secondaryColor = Color(0xFFA87C00);

class ReglamentoScreen extends StatelessWidget {
  const ReglamentoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "REGLAMENTO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    //reglas a start
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\u2022 General",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "a. Estudiantes",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 16),
                          child: Text(
                            "a. El estudiante debe estar matriculado en el ciclo 2024-1 hasta el 27 de marzo en cualquier modalidad Presencial, Semipresencial o a Distancia. \n b. El practicante preprofesional solo puede jugar en esta categoría. \n c. El estudiante solo puede representar al colegio Unión o a una Facultad. \n d. El estudiante puede participar solo en un (1) deporte colectivo (Fustal, Vóley, Básquet, Carrera de postas), con excepción del estudiante del Colegio Unión que puede participar en dos deportes. \n e. Dada la naturaleza de la Facultad de Teología, las esposas de los estudiantes matriculados pueden participar en los equipos de la misma. \n f. No puede participar el estudiante que ha sido sancionado por conducta antideportiva en el deporte interno del aniversario 2023.",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    //reglas a end
                    //reglas b start
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "b. Colaboradores",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 16),
                          child: Text(
                            "a. El trabajador empleado, misionero y contratado a tiempo completo, que no se encuentra de licencia. Asimismo, el trabajador contratado a tiempo parcial (4 horas Académicas) hasta el 29 de marzo y por un período mínimo de tres meses. \n b. El trabajador con contrato vigente al 31 de marzo puede participar siempre y cuando tenga renovación automática de su contrato (a partir del 1 de abril). \n c. El (la) cónyuge del trabajador si este(a) cumple con los requisitos del inciso a. \n d. El trabajador empleado, misionero y contratado participa por su área y/o Facultad adscrita. \n e. El trabajador que no es convocado en su área puede participar para el área de su cónyuge. \n f. La categoría Máster comprende al trabajador desde los 40 años (cumplidos al 31 de marzo de 2024). \n g. No puede participar el colaborador que ha sido sancionado por conducta antideportiva en el deporte interno del aniversario 2023.",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    //reglas b end
                    //reglas c start
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\u2022 Específicos",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "a. Futsal",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 16),
                          child: Text(
                            "1. Se aplica el Reglamento de Futsal. \n 2. Se presentan en el campo cinco (5) jugadores como mínimo. \n 3. El equipo que no se presente completo a la hora estipulada pierde por WO, con un marcador de 2-0 en contra. \n 4. Cada partido dura 20 minutos (10 minutos por periodo) \n 5. Fase de Grupos: La clasificación es por acumulación de puntos. En caso de empate en la puntuación, se considera la diferencia de goles (Goles a favor); si persistiera dicha igualdad se toma en cuenta la acumulación tarjetas. \n 6. Fase Semifinales: Si el partido termina en empate, se define por penales (3 tiros por diferentes jugadores) y si el empate persiste se lanzan dos penales adicionales. De mantenerse el empate, se continúa hasta que haya un ganador. (Solo jugadores que estén en cancha). \n 7. En la final: si el partido termina en empate, se juega 10 minutos más, si persiste el empate, se aplica el inciso 6. \n 8. El jugador que acumule dos tarjetas amarillas queda suspendido el siguiente partido automáticamente. \n 9. El jugador que reciba directamente una tarjeta roja es expulsado del partido y su continuidad depende de la evaluación de la gravedad de la falta por la comisión de disciplina. \n 10. Las tarjetas amarillas se anulan al terminar la fase de grupos. \n 11. Los reclamos se hacen antes de iniciar el partido. No se aceptan reclamos una vez iniciado el partido.",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    //reglas c end
                    //reglas b start
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "b. Vóley",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24, right: 16),
                          child: Text(
                            "1. Se aplica el Reglamento Internacional de Voleibol. \n 2. Cada partido es de dos (2) sets de 15 puntos cada uno. En caso de empate, se juega un set adicional de 10 puntos. \n 3. Cada equipo se presentará a la hora estipulada en el fixture con sus 6 jugadores. De no ser el caso, pierde automáticamente por WO. \n 4. Se otorga solo un (1) tiempo por set a solicitud del entrenador o capitán de equipo. \n 5. La puntuación será de la siguiente manera:",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 70),
                          child: Text(
                            "\u2022 partido ganado 2 - 0: 3 puntos al ganador \n\u2022 partido ganado 2 - 1: 2 puntos al ganador y 1 punto al perdedor ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                    //reglas b end
                  ],
                ),
              );
            },
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        color: secondaryColor,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Iconsax.calendar_search,
                  color: Colors.white,
                ),
                Text(
                  "Fixture",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Iconsax.award,
                  color: Colors.white,
                ),
                Text(
                  "Posiciones",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Iconsax.home,
                  color: Colors.white,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Iconsax.edit,
                  color: primaryColor,
                ),
                Text(
                  "Reglamento",
                  style: TextStyle(
                      fontSize: 12,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Iconsax.map,
                  color: Colors.white,
                ),
                Text(
                  "Mapa",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
