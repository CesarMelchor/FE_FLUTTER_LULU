import 'package:flutter/material.dart';
import 'package:lulu/src/screens/gallery.dart';
import 'package:lulu/src/screens/home.dart';
import 'package:vrouter/vrouter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(
    ResponsiveSizer(
      builder: (context, orientation, screenType) {
    return VRouter(
      initialUrl: '/home',
      title: 'Lulú Kennedy | Events that matter',
      debugShowCheckedModeBanner: false,
      routes: [
        VWidget(path: '/home', widget:  const MyHomePage(title: '',)),
        VWidget(path: '/galery', widget:  const GalleryScreen()),
      ],
    );
  }));
}
