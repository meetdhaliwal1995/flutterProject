import 'dart:developer';

import 'package:flutter/material.dart';
import 'imgur_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imgur API Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<dynamic>> _futureImages;

  @override
  void initState() {
    super.initState();
    _futureImages = ImgurApi.getImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imgur API Example'),
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: _futureImages,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  final image = snapshot.data![index];
                  log(image.toString());
                  return ListTile(
                    leading: Image.network(
                      image['images'][0]['link'],
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    title: Text(image['title'] ?? ''),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
