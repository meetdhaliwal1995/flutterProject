import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import '../models/image_model.dart';
import 'imgur_api.dart';
import 'package:velocity_x/velocity_x.dart';

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
      body: ImageList(),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(children: const [
            Header(),
          ]),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Imgur Images".text.xl4.bold.color(Colors.amber).make(),
        "Viral Images".text.make()
      ],
    );
  }
}

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
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
    ));
  }
}

class GridViewList extends StatelessWidget {
  const GridViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<ImgurImages>(
        future: ImgurApi.getImages(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 16, crossAxisSpacing: 16),
              itemBuilder: (context, index) {
                final image = snapshot.data?.data?[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: GridTile(
                      header: Container(
                        decoration: const BoxDecoration(color: Colors.amber),
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          image!.title.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      footer: Text(image.description ?? ''),
                      child: Image.network(image.images?[0].link ?? '')),
                );
              },
              itemCount: snapshot.data?.data!.length ?? 0,
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
