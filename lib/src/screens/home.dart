import 'package:flutter/material.dart';
import 'package:lulu/src/mobile/mobile_home.dart';
import 'package:lulu/src/web/web_home.dart';
import 'package:lulu/src/widgets/appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lulú',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool responsive = false;
    if (size.width <= 844) {
      responsive = true;
    } else {
      responsive = false;
    }

    return Scaffold(
      drawer: responsive == true ? 
      Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      ListTile(
        title: const Text('Item 1'),
        onTap: () {
        },
      ),
      ListTile(
        title: const Text('Item 2'),
        onTap: () {
        },
      ),
    ],
  ),
) : Container(),
      appBar: PreferredSize(
        preferredSize: responsive == true
            ?  Size.fromHeight(Adaptive.h(8))
            :  Size.fromHeight(Adaptive.h(9)),
        child : CustomAppbar(responsive, '')),
      body: responsive == false ? const WebHomeScreen() : const MobileHomeScreen()
    );
  }
}
