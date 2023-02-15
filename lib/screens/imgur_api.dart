import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';

class ImgurApi {
  static const String baseUrl = 'https://api.imgur.com/3';
  static const String clientId = 'fd042eecfd24f09';

  static Future<ImgurImages> getImages() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/gallery/hot/viral/0.json'),
        headers: {
          'Authorization': 'Client-ID $clientId',
        },
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        var link = data.toString;

        var imageData = ImgurImages.fromJson(data);
        print('ssshowResponse $imageData');
        log('logggggg $link.toString()');

        return imageData;
      } else {
        throw Exception('Failed to load images');
      }
    } catch (e, st) {
      log('$e $st');
      rethrow;
    }
  }
}
