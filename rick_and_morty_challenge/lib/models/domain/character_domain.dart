class Character {
  const Character({
    this.id,
    this.name,
    this.gender,
    this.species,
    this.image,
    this.url,
  });

  final int? id;
  final String? name;
  final String? species;
  final String? gender;
  final String? image;
  final String? url;

  @override
  String toString() =>
      '======================\nCharacter $id : $name \nSpecie: $species\nGender: $gender\nImage url: $image\nUrl: $url\n';
}