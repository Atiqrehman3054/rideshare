// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imgUrl;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailScreen({required this.imgUrl});
  @override
  Widget build(BuildContext context) {
    //Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        child: Center(
            child: CachedNetworkImage(
          imageUrl: imgUrl.toString(),
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
              // CircularProgressIndicator(

              //     backgroundColor: Colors.white,
              //     strokeWidth: strokeWidth,
              //     value: downloadProgress.progress),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        )

            // Hero(
            //   tag: 'imageHero',
            //   child: Image.network(imgUrl),,
            // ),
            ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
