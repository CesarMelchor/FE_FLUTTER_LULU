import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:lulu/src/utils/Variables.dart';
import 'package:lulu/src/utils/letter.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vrouter/vrouter.dart';
class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {


final List<String> imgList = [
  "assets/images/c1.jpg",
  "assets/images/c2.jpg",
  "assets/images/c3.jpg",
  "assets/images/c4.jpg",
];


  TextEditingController nombre = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController servicio = TextEditingController();
  TextEditingController budget = TextEditingController();
  TextEditingController message = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
final List<Widget> imageSliders = imgList
    .map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 1000.0),
            ],
          )),
    ))
    .toList();


    return ListView(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
        ),
        SizedBox(
          width: Adaptive.w(100),
          height: Adaptive.h(70),
          child: ResponsiveGridList(
              horizontalGridSpacing: 40,
              verticalGridSpacing: 16,
              horizontalGridMargin: 70,
              verticalGridMargin: 50,
              minItemWidth: 400,
              minItemsPerRow: 1,
              maxItemsPerRow: 2,
              listViewBuilderOptions: ListViewBuilderOptions(),
              children: [
                Image.asset("assets/images/p2_1.jpg"),
                Column(
                  children: [
                    Text(
                      "I work to create beautiful, emotional, and magical events for the most important day of your life.",
                      style: TextStyle(fontSize: Adaptive.sp(15)),
                    ),
                    SizedBox(
                      height: Adaptive.h(3),
                    ),
                    Text(
                      "As an event planner my philosophy is to establish meaningful relationships with clients , truly listen to their vision and seamlessly incorporate it with my unique style. This approach results in stunning and authentic events that become unfortgettable memories",
                      style: TextStyle(fontSize: Adaptive.sp(12)),
                    ),
                    SizedBox(
                      height: Adaptive.h(3),
                    ),
                    OutlinedButton(
                        style: Variables.botonNegro,
                        onPressed: () {},
                        child: Text(
                          "About me",
                          style: TextStyle(fontSize: Adaptive.sp(12)),
                        ))
                  ],
                )
              ]),
        ),
        Container(
          width: Adaptive.w(100),
          height: Adaptive.h(80),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/p2_3.jpg"), fit: BoxFit.cover),
          ),
          child: SizedBox(
            width: Adaptive.w(100),
            height: Adaptive.h(70),
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(30),
                ),
                Text(
                  "Are you planning to have a destination wedding?",
                  style: TextStyle(fontSize: Adaptive.sp(12)),
                ),
                Text(
                  "Let's book a stunning event in Toscany, Italy or in Cabo, Mexico.",
                  style: TextStyle(fontSize: Adaptive.sp(12)),
                ),
                SizedBox(
                  height: Adaptive.w(5),
                ),
                OutlinedButton(
                    style: Variables.botonNegro,
                    onPressed: () {},
                    child: Text(
                      "Book your date",
                      style: TextStyle(fontSize: Adaptive.sp(12)),
                    ))
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black,
          child: SizedBox(
              width: Adaptive.w(100),
              height: Adaptive.h(70),
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text(
                    "Our services",
                    style: TextStyle(
                        fontSize: Adaptive.sp(15), color: Colors.white),
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text(
                    "To support a seamless and elevated experience, we offer a range of higth-in services including event planning and design, stationery, flowers and decor.",
                    style: TextStyle(
                        fontSize: Adaptive.sp(12), color: Colors.white),
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  SizedBox(
                    width: Adaptive.w(100),
                    height: Adaptive.h(35),
                    child: ResponsiveGridList(
                        horizontalGridSpacing: 0,
                        verticalGridSpacing: 16,
                        horizontalGridMargin: 70,
                        verticalGridMargin: 50,
                        minItemWidth: 200,
                        minItemsPerRow: 2,
                        maxItemsPerRow: 4,
                        children: [
                          Image.asset(
                            "assets/images/copas.png",
                            height: Adaptive.h(15),
                          ),
                          Image.asset(
                            "assets/images/flowers.png",
                            height: Adaptive.h(15),
                          ),
                          Image.asset(
                            "assets/images/order.png",
                            height: Adaptive.h(15),
                          ),
                          Image.asset(
                            "assets/images/mundo.png",
                            height: Adaptive.h(15),
                          ),
                        ]),
                  ),
                  Text(
                    "Unforgettable Events Tailored to Your Every Need",
                    style: TextStyle(
                        fontSize: Adaptive.sp(17), color: Colors.white),
                  ),
                ],
              )),
        ),
        SizedBox(
          height: Adaptive.h(3),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: Adaptive.w(4),
              ),
              SizedBox(
                width: Adaptive.w(20),
                height: Adaptive.h(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "My recent events",
                      style: TextStyle(fontSize: Adaptive.sp(15)),
                    ),
                    SizedBox(
                      height: Adaptive.h(4),
                    ),
                    Text(
                      "As your event planner, my mission is to create beautiful and timeless memories that you can cherish forever",
                      style: TextStyle(fontSize: Adaptive.sp(10)),
                    ),
                    SizedBox(
                      height: Adaptive.h(3),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),
             InkWell(
                onTap: () {
                  Variables.galery = Variables.galery1;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/1/al1.jpg",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery2;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/2/cs1.jpg",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery3;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/3/gl1.png",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery4;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/4/g2_1.png",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery5;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/5/vc1.jpg",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery6;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/6/md1.jpg",
                  width: Adaptive.w(15),
                ),
              ),
              SizedBox(
                width: Adaptive.w(2),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery7;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/7/gt1.jpg",
                  width: Adaptive.w(15),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Adaptive.h(3),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "LET'S TALK ABOUT YOUR DREAM EVENT",
              style: TextStyle(fontSize: Adaptive.sp(12)),
            ),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/whats.png",
                  width: Adaptive.w(4),
                )),
            Image.asset(
              "assets/images/flecha.png",
              width: Adaptive.w(8),
            ),
            RotatedBox(
                quarterTurns: 2,
                child: Image.asset(
                  "assets/images/flecha.png",
                  width: Adaptive.w(8),
                ))
          ],
        ),
        SizedBox(
          height: Adaptive.h(5),
        ),
        SizedBox(
            width: Adaptive.w(100),
            child: Image.asset(
              "assets/images/imagen_gift.gif",
              fit: BoxFit.fill,
            )),
        SizedBox(
          height: Adaptive.h(5),
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo_lulu.png",
                  width: Adaptive.w(15),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Text( 
                  "Kind Words",
                  style: TextStyle(fontSize: Adaptive.sp(25)),
                ),
                Text(
                  "from my clients",
                  style: TextStyle(fontSize: Adaptive.sp(12)),
                ),
                SizedBox(
                  width: Adaptive.w(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/flecha.png",
                        width: Adaptive.w(8),
                      ),
                      Text(
                        "0/6",
                        style: TextStyle(fontSize: Adaptive.sp(12)),
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Image.asset(
                            "assets/images/flecha.png",
                            width: Adaptive.w(8),
                          ))
                    ],
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/images/p4_1.png",
              width: Adaptive.w(60),
            )
          ],
        ),
        SizedBox(
          height: Adaptive.h(5),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Let's talk",
                    style: TextStyle(fontSize: Adaptive.sp(24)),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  SizedBox(
                    width: Adaptive.w(40),
                    child: Text(
                      "Whether you're planning a wedding, a corporate event, or a social gathering, we're here to assist you every step of the way. We offer a range of services, including venue selection, vendor management, event design, and more.",
                      style: TextStyle(fontSize: Adaptive.sp(12)),
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: Adaptive.sp(14)),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "info@lulukennedy.com",
                    style: TextStyle(fontSize: Adaptive.sp(12)),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "Socials",
                    style: TextStyle(fontSize: Adaptive.sp(14)),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "Instagram",
                    style: TextStyle(fontSize: Adaptive.sp(12)),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(fontSize: Adaptive.sp(12)),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Adaptive.w(40),
              child: Column(
                children: [
                  SizedBox(
                    width: Adaptive.w(35),
                    child: TextFormField(
                      inputFormatters: [
                        CapitalLetters(),
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9a-zA-ZñÑ ]"))
                      ],
                      controller: nombre,
                      onChanged: (value) {
                        setState(() {
                          nombre.text = value;
                        });
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  Variables.borderRadiusInput))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Variables.colorGris),
                              borderRadius: BorderRadius.all(Radius.circular(
                                  Variables.borderRadiusInput))),
                          floatingLabelStyle: const TextStyle(color: Colors.black),
                          label: const Text("NAME")),
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  SizedBox(
                    width: Adaptive.w(50),
                    child: Column(
                      children: [
                        SizedBox(
                          width: Adaptive.w(35),
                          child: TextFormField(
                            inputFormatters: [
                              CapitalLetters(),
                              FilteringTextInputFormatter.allow(
                                  RegExp("[0-9a-zA-ZñÑ ]"))
                            ],
                            controller: email,
                            onChanged: (value) {
                              setState(() {
                                email.text = value;
                              });
                            },
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            Variables.borderRadiusInput))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Variables.colorGris),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            Variables.borderRadiusInput))),
                                floatingLabelStyle:
                                    const TextStyle(color: Colors.black),
                                label: const Text("EMAIL")),
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(3),
                        ),
                        SizedBox(
                          width: Adaptive.w(50),
                          child: Column(
                            children: [
                              SizedBox(
                                width: Adaptive.w(35),
                                child: TextFormField(
                                  inputFormatters: [
                                    CapitalLetters(),
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9a-zA-ZñÑ ]"))
                                  ],
                                  controller: servicio,
                                  onChanged: (value) {
                                    setState(() {
                                      servicio.text = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              const BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Variables.colorGris),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      floatingLabelStyle:
                                          const TextStyle(color: Colors.black),
                                      label: const Text(
                                          "WHAT SERVICE ARE YOU INTERESTED IN")),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(3),
                        ),
                        SizedBox(
                          width: Adaptive.w(50),
                          child: Column(
                            children: [
                              SizedBox(
                                width: Adaptive.w(35),
                                child: TextFormField(
                                  inputFormatters: [
                                    CapitalLetters(),
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9a-zA-ZñÑ ]"))
                                  ],
                                  controller: budget,
                                  onChanged: (value) {
                                    setState(() {
                                      budget.text = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              const BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Variables.colorGris),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      floatingLabelStyle:
                                          const TextStyle(color: Colors.black),
                                      label: const Text("BUDGET")),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(3),
                        ),
                        SizedBox(
                          width: Adaptive.w(50),
                          child: Column(
                            children: [
                              SizedBox(
                                width: Adaptive.w(35),
                                child: TextFormField(
                                  inputFormatters: [
                                    CapitalLetters(),
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9a-zA-ZñÑ ]"))
                                  ],
                                  controller: message,
                                  onChanged: (value) {
                                    setState(() {
                                      message.text = value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              const BorderSide(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Variables.colorGris),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(Variables
                                                  .borderRadiusInput))),
                                      floatingLabelStyle:
                                          const TextStyle(color: Colors.black),
                                      label: const Text("MESSAGE")),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Adaptive.h(5),
                        ),
                        OutlinedButton(
                            style: Variables.botonNegro,
                            onPressed: () {},
                            child: Text(
                              "Submit",
                              style: TextStyle(fontSize: Adaptive.sp(12)),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: Adaptive.h(7),),
        Container(
          color: const Color.fromARGB(255, 117, 117, 117),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo_lulu.png",
                    width: Adaptive.w(15),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "We look forward to hearing from you!",
                    style: TextStyle(fontSize: Adaptive.sp(14)),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Services", style: TextStyle(fontSize: Adaptive.sp(12))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text("Elopment weddings",
                      style: TextStyle(fontSize: Adaptive.sp(12))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text("Social meeting",
                      style: TextStyle(fontSize: Adaptive.sp(12))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text("Corporate meeting",
                      style: TextStyle(fontSize: Adaptive.sp(12))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Text("Weddings", style: TextStyle(fontSize: Adaptive.sp(12))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Stalk my socials",
                      style: TextStyle(fontSize: Adaptive.sp(14))),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.mail_lock_outlined),
                      SizedBox(width: Adaptive.w(1),),
                      Text("info@lulukennedy.com",
                          style: TextStyle(fontSize: Adaptive.sp(12)))
                    ],
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.phone_android_rounded),
                      SizedBox(width: Adaptive.w(1),),
                      Text("+91 98765 43210",
                          style: TextStyle(fontSize: Adaptive.sp(12)))
                    ],
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.gps_fixed_rounded),
                      SizedBox(width: Adaptive.w(1),),
                      Text("772 Lyonwood Ave Walnut, CA 91789",
                          style: TextStyle(fontSize: Adaptive.sp(12)))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: Adaptive.h(7),
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "2023 Lulú Kennedy. All rights reserved",
                style:
                    TextStyle(fontSize: Adaptive.sp(12), color: Colors.white),
              ),
              Text(
                "Hecho con amor por @amparo.rubiweb & @cesar.melchorg",
                style:
                    TextStyle(fontSize: Adaptive.sp(12), color: Colors.white),
              ),
              Text(
                "Terms & conditions | Privacy Policy | Sitemap | Disclaimer",
                style:
                    TextStyle(fontSize: Adaptive.sp(12), color: Colors.white),
              ),
            ],
          ),
        )
      ],
    );
  }
}
