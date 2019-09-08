import 'location_fact.dart';

class Location {
  
  final int id;
  
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Sams Title', 'assets/images/treble-clef-heart.png', [
        LocationFact('Summary', 'Something1'),
        LocationFact('Sams Summary', 'Yoooo')
      ]),
      Location(2, 'Thing', 'assets/images/treble-clef-heart.png', [
        LocationFact('Thing', 'Something1'),
        LocationFact('Thing Summary', 'Yoooo')
      ]),
      Location(3, 'Your Mom', 'assets/images/treble-clef-heart.png', [
        LocationFact('Mom', 'Something1'),
        LocationFact('Dad', 'Yoooo')
      ])
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();

    for (var i = 0; i < locations.length; i++){
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }

    return locations.first;
  }
}