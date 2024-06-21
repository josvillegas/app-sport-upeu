class Eventos {
  String idEvent;
  String padre;
  String padreYear;

  Eventos(
      {required this.idEvent, required this.padre, required this.padreYear});
}

final List<Eventos> eventos = [
  Eventos(idEvent: "1", padre: "E02", padreYear: "2023"),
  Eventos(idEvent: "2", padre: "E01", padreYear: "2024"),
];
