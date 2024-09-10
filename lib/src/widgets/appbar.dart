import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppbar extends StatefulWidget {
  final bool responsive;
  final String ruta;
  const CustomAppbar(this.responsive, this.ruta, {super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
        title: widget.responsive == false ? SizedBox(
          height: Adaptive.h(10),
          child: Row(
            children: [
              SizedBox(width: Adaptive.w(5),),
            Text("Destination", style: TextStyle(fontSize: Adaptive.sp(12), color: Colors.black),),
            SizedBox(width: Adaptive.w(5),),
            Text("Gallery", style: TextStyle(fontSize: Adaptive.sp(12), color: Colors.black),),
            SizedBox(width: Adaptive.w(5),),
            Text("Our services",style: TextStyle(fontSize: Adaptive.sp(12), color: Colors.black),),
            SizedBox(width: Adaptive.w(15),),
            Image.asset("assets/images/logo_lulu.png", height: Adaptive.h(15),),
            SizedBox(width: Adaptive.w(30),),
            Image.asset("assets/images/instagram_logo.png", height: Adaptive.h(3),)
          ],),
        ) :   Center(child: Image.asset("assets/images/logo_lulu.png", height: Adaptive.h(15),)),
          ) ;
  }
}
