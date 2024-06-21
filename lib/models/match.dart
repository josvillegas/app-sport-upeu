class Match {
  String idMatch;
  String equipoA;
  String equipoB;
  String marcadorA;
  String marcadorB;
  String deporte;
  String escenario;
  String estadoTiempo;
  String estadoTiempoId;
  String tiempo;
  String estadoFase;
  String genderMatch;
  String genderCategoria;
  String imagenEquipoA;
  String imagenEquipoB;
  String estadoMostrar;
  String eventoPadre;
  String padre;
  String padreYear;

  Match(
      {required this.idMatch,
      required this.equipoA,
      required this.equipoB,
      required this.marcadorA,
      required this.marcadorB,
      required this.deporte,
      required this.escenario,
      required this.estadoTiempo,
      required this.estadoTiempoId,
      required this.tiempo,
      required this.estadoFase,
      required this.genderMatch,
      required this.genderCategoria,
      required this.imagenEquipoA,
      required this.imagenEquipoB,
      required this.estadoMostrar,
      required this.eventoPadre,
      required this.padre,
      required this.padreYear});
}

final List<Match> matches = [
  Match(
      idMatch: "1",
      equipoA: "I Unión",
      equipoB: "P Unión",
      marcadorA: "0",
      marcadorB: "0",
      deporte: "Futsal",
      escenario: "Loza 1",
      estadoTiempo: "14:00",
      estadoTiempoId: "ET03",
      tiempo: "00'",
      estadoFase: "Final",
      genderMatch: "Damas",
      genderCategoria: "Personal",
      imagenEquipoA: "images/upeu.png",
      imagenEquipoB: "images/upeu.png",
      estadoMostrar: "mostrar",
      eventoPadre: "S01",
      padre: "E01",
      padreYear: "2024"),
  Match(
      idMatch: "2",
      equipoA: "C Union",
      equipoB: "Servicios",
      marcadorA: "0",
      marcadorB: "0",
      deporte: "Voley",
      escenario: "Loza 2",
      estadoTiempo: "14:40",
      estadoTiempoId: "ET03",
      tiempo: "00'",
      estadoFase: "Semi Final",
      genderMatch: "Damas",
      genderCategoria: "Personal",
      imagenEquipoA: "images/upeu.png",
      imagenEquipoB: "images/upeu.png",
      estadoMostrar: "mostrar",
      eventoPadre: "S03",
      padre: "E01",
      padreYear: "2024"),
  Match(
      idMatch: "3",
      equipoA: "G1",
      equipoB: "G2",
      marcadorA: "0",
      marcadorB: "0",
      deporte: "Basquet",
      escenario: "Loza 3",
      estadoTiempo: "16:40",
      estadoTiempoId: "ET03",
      tiempo: "00'",
      estadoFase: "Final",
      genderMatch: "Damas",
      genderCategoria: "Personal",
      imagenEquipoA: "images/upeu.png",
      imagenEquipoB: "images/upeu.png",
      estadoMostrar: "mostrar",
      eventoPadre: "S02",
      padre: "E01",
      padreYear: "2024"),
];
