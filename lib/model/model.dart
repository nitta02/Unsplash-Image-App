class UnsplashImage {
  final String id;
  // final String description;
  final String imageUrl;

  UnsplashImage({
    required this.id,
    // required this.description,
    required this.imageUrl,
  });

  factory UnsplashImage.fromJson(Map<String, dynamic> json) {
    return UnsplashImage(
      id: json['id'],
      // description: json['description'] ?? '',
      imageUrl: json['urls']['regular'],
    );
  }
}
