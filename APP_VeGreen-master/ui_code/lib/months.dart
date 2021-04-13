class Months {
  int meses;
  String nombres;
  String precio;

  Months({this.meses, this.nombres, this.precio});

  static List<Months> getMes() {
    return <Months>[
      Months(meses: 1, nombres: "1 Mes de VIP Plan", precio: "14 USD"),
      Months(meses: 3, nombres: "3 Meses de VIP Plan", precio: "40 USD"),
      Months(meses: 12, nombres: "12 Meses de VIP Plan", precio: "150 USD"),
    ];
  }
}
