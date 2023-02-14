import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/images.dart';

class ImgurApi {
  static const String baseUrl = 'https://api.imgur.com/3';
  static const String clientId = 'fd042eecfd24f09';

  static Future<List<dynamic>> getImages() async {
    final response = await http.get(
      Uri.parse('$baseUrl/gallery/hot/viral/0.json'),
      headers: {
        'Authorization': 'Client-ID $clientId',
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      List<ImgurImage> images =
          data.map<ImgurImage>((json) => ImgurImage.fromJson(json)).toList();
      images.removeWhere((image) => image.link == null);
      return data;
    } else {
      throw Exception('Failed to load images');
    }
  }
}
