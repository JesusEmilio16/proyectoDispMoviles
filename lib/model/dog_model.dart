class DogModel {
  final String imageUrl;
  final String raza ;

  DogModel({required this.imageUrl, required this.raza});

  factory DogModel.fromJson(Map<String, dynamic> json) {
    final imageUrl = json['message'];
    // Extraer la raza de la URL
    final uri = Uri.parse(imageUrl);
    final segments = uri.pathSegments; // divide por "/"
    final breedIndex = segments.indexOf("breeds") + 1;
    final breed = breedIndex < segments.length ? segments[breedIndex] : "Unknown";

    return DogModel(
      imageUrl: imageUrl,
      raza: breed,
    );
  }
}
