import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ImgurRepository {
  static const String baseUrl = 'https://api.imgur.com/3';
  static const String clientId = 'YOUR_CLIENT_ID';

  FutureOr<List<ImgurImages>> getImages() async {
    final response = await http.get(
      Uri.parse('$baseUrl/gallery/hot/viral/0.json'),
      headers: {
        'Authorization': 'Client-ID $clientId',
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      final List<ImgurImages> images = [];
      data.forEach((json) {
        final image = ImgurImages.fromJson(json);
        images.add(image);
      });
      return images;
    } else {
      throw Exception('Failed to load images');
    }
  }
}
