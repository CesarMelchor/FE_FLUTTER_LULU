import 'package:flutter/material.dart';
import 'package:lulu/src/utils/variables.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vrouter/vrouter.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});
  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<String> imagenes = Variables.galery1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
        leading: BackButton(
          onPressed: () {
            context.vRouter.to("/home");
          },
        ),
        title: Center(
            child: Image.asset(
          "assets/images/logo_lulu.png",
          height: Adaptive.h(15),
        )),
      ),
      body: ResponsiveGridList(
        horizontalGridSpacing: 16, // Horizontal space between grid items
        verticalGridSpacing: 16, // Vertical space between grid items
        horizontalGridMargin: 50, // Horizontal space around the grid
        verticalGridMargin: 50, // Vertical space around the grid
        minItemWidth:
            300, // The minimum item width (can be smaller, if the layout constraints are smaller)
        minItemsPerRow:
            1, // The minimum items to show in a single row. Takes precedence over minItemWidth
        maxItemsPerRow:
            5, // The maximum items to show in a single row. Can be useful on large screens
        children: [
          for (var item in imagenes)
            Image.asset("assets/images/galery/1/$item"),
        ],
      ),
    );
  }
}
