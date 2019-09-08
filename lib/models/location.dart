import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll(){
    return [
      Location('Sams Title', 'assets/images/treble-clef-heart.png', [
        LocationFact('Summary', 'Something1'),
        LocationFact('Sams Summary', 'Yoooo')
      ])
    ];
  }
}