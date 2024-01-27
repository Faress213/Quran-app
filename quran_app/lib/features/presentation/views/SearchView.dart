import 'package:flutter/material.dart';

// Define a list of images (replace with your actual image data)
List<String> images = ['image1.jpg', 'image2.png', 'image3.svg'];

// Function to filter the list of images based on a search term
List<String> searchImages(String searchTerm) {
  return images.where((image) => image.contains(searchTerm)).toList();
}

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    // Create a text field to enter the search term
    final TextEditingController searchController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Image Search'),
        ),
        body: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Enter search term...',
              ),
              onSubmitted: (searchTerm) {
                // Perform the search and update the list of images
                final filteredImages = searchImages(searchTerm);
                setState(() {
                  images = filteredImages;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  // Display the images using a grid or list view
                  return Image.asset(
                    'assets/images/${images[index]}',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
