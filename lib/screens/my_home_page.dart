import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import '../models/image_model.dart';
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
  // List<ImgurImages>? _futureImages;
  // final ImgurApi _imgurApi = ImgurApi();

  @override
  void initState() {
    super.initState();

    // Future.delayed(
    //   Duration.zero,
    //   () async {
    //     _futureImages = await ImgurApi.getImages();
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imgur API Example'),
      ),
      body: Center(
        child: FutureBuilder<ImgurImages>(
          future: ImgurApi.getImages(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final image = snapshot.data?.data?[index];
                  log(image!.link.toString());
                  print('datasssss  $image');
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    leading: Image.network(
                      image.images?[0].link ?? '',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    title: Text(image.title ?? ''),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
