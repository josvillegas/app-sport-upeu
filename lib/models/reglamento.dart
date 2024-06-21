class Reglamento {
  String idReglamento;
  String title;
  String subTitle;
  String information;

  Reglamento(
      {required this.idReglamento,
      required this.title,
      required this.subTitle,
      required this.information});
}

final List<Reglamento> reglamentos = [
  Reglamento(
      idReglamento: '1',
      title: 'General',
      subTitle: 'Estudiantes',
      information: 'a. El estudiantes debe ...')
];
