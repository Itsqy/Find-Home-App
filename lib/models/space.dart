import 'dart:ffi';

class Space {
  int? id;
  String? name;
  String? imageUrl;
  String? city;
  String? country;
  int? price;
  int? rating;
  String? address;
  String? phone;
  List? photos;
  String? mapUrl;
  int? numberOfKitchen;
  int? numberOfBedroom;
  int? numberOfCupboard;

  Space(
      {this.id,
      this.name,
      this.imageUrl,
      this.price,
      this.city,
      this.country,
      this.rating,
      this.address,
      this.numberOfBedroom,
      this.numberOfCupboard,
      this.numberOfKitchen,
      this.phone,
      this.photos,
      this.mapUrl});

  // ignore: empty_constructor_bodies
  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfBedroom = json['number_of_bedrooms'];
    numberOfCupboard = json['number_of_cupboards'];
    numberOfKitchen = json['number_of_kitchens'];
  }
}
