import 'dart:ffi';

class Space {
  int? id;
  String? name;
  String? imageUrl;
  String? city;
  String? country;
  int? price;
  int? rating;

  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
  });
}
