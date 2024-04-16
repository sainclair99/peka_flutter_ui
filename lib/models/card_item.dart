class CardItem {
  String date;
  String prix;
  String heureDebut;
  String heureFin;
  String imageUrl;
  String name;
  String fname;
  String lname;
  String? ratio;
  String? preference;
  String? agenceName;

  CardItem({
    required this.date,
    required this.prix,
    required this.heureDebut,
    required this.heureFin,
    required this.imageUrl,
    required this.name,
    required this.fname,
    required this.lname,
    this.ratio,
    this.preference,
    this.agenceName,
  });
}
