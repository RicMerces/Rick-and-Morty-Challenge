class CharacterDto {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? image;
  String? url;

  CharacterDto(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.gender,
      this.image,
      this.url});

  CharacterDto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    gender = json['gender'];
    image = json['image'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['gender'] = gender;
    data['image'] = image;
    data['url'] = url;
    return data;
  }
}
