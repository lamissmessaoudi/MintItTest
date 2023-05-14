import 'package:mintit/utils/assets.dart';

class Pilot {
  final String id;
  final String image;
  final String name;
  final String car;

  Pilot({
    required this.id,
    required this.image,
    required this.name,
    required this.car,
  });

  factory Pilot.fromJson(Map<String, dynamic> json) {
    return Pilot(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      car: json['car'],
    );
  }

  late final imgPath = "${AppAssets.pilotRoute}/$image.png";
}
