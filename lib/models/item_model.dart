class ItemModel {
  int? id;
  String? name;
  String? imageUrl;
  int? value;
  String? size;
  String? profile;
  String? profileUrl;

  ItemModel(
    this.id,
    this.name,
    this.imageUrl,
    this.value,
    this.size,
    this.profile,
    this.profileUrl
  );

  ItemModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    imageUrl = json["image_url"];
    value = json["value"];
    size = json["size"];
    profile = json["profile"];
    profileUrl = json["profile_url"];
  }
}
