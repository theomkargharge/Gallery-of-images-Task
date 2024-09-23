import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ImageController extends GetxController {
  var images = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  Future<void> fetchImages() async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(
          'https://pixabay.com/api/?key=46131553-634b3faf722d3f1f1d9fa0d96&image_type=photo'
        ),
      );
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        images.value = jsonResponse['hits'];
      }
    } finally {
      isLoading(false);
    }
  }
}
