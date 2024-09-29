import 'package:flutter/material.dart';
import 'package:image_asstes_project/model/model.dart';
import 'package:image_asstes_project/service/apiService.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late Future<List<UnsplashImage>> futureImages;

  @override
  void initState() {
    super.initState();
    futureImages = ApiService().getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unsplash Image Scroller'),
      ),
      body: FutureBuilder<List<UnsplashImage>>(
        future: futureImages,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: const Text('No images found'),
            );
          } else {
            return GridView.builder(
              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 16 / 24,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                UnsplashImage image = snapshot.data![index];
                return Card(
                  elevation: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        image.imageUrl,
                        fit: BoxFit.fitHeight,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(
                      //     image.description.isNotEmpty
                      //         ? image.description
                      //         : 'No description',
                      //     style: TextStyle(fontSize: 16),
                      //   ),
                      // ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
