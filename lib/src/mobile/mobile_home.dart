import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lulu/src/utils/Variables.dart';
import 'package:lulu/src/utils/letter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vrouter/vrouter.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  TextEditingController nombre = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController servicio = TextEditingController();
  TextEditingController budget = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: Adaptive.h(60),
            width: Adaptive.w(100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(20),
                ),
                Text(
                  "From Weddings to social Meetings",
                  style: TextStyle(
                      fontFamily: "KanitRegular",
                      fontSize: Adaptive.sp(20),
                      color: Colors.white),
                ),
                Text("We Got You Covered",
                    style: TextStyle(
                        fontSize: Adaptive.sp(20),
                        fontFamily: "KanitRegular",
                        color: Colors.white)),
                SizedBox(
                  height: Adaptive.h(10),
                ),
                OutlinedButton(
                    style: Variables.botonNegro,
                    onPressed: () {},
                    child: Text(
                      "Let's talk",
                      style: TextStyle(
                        fontSize: Adaptive.sp(16),
                        fontFamily: "KanitRegular",
                      ),
                    ))
              ],
            ),
          ),
          Container(
            width: Adaptive.w(100),
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Adaptive.h(3)),
                  child: SizedBox(
                    width: Adaptive.w(80),
                    child: Text(
                      "Whether you're dreaming of a luxurious beach wedding in Cabo, Mexico or a romantic Tuscan-inspired celebration in Italy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: Adaptive.sp(17),
                          fontFamily: "KanitMedium",
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "We've got you covered.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Adaptive.sp(17),
                      color: Colors.white,
                      fontFamily: "KanitMedium",
                    ),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(7),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(10),
                  ),
                  Text(
                    "I work to create beautiful, emotional, and magical events for the most important day of your life.",
                    style: TextStyle(
                      fontSize: Adaptive.sp(18),
                      fontFamily: "KanitMedium",
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(3),
                  ),
                  Image.asset("assets/images/p2_2.jpg"),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                  Text(
                    "As an event planner my philosophy is to establish meaningful relationships with clients , truly listen to their vision and seamlessly incorporate it with my unique style. This approach results in stunning and authentic events that become unfortgettable memories",
                    style: TextStyle(
                      fontSize: Adaptive.sp(18),
                      fontFamily: "KanitMedium",
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(5),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Adaptive.w(100),
            height: Adaptive.h(80),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/p2_3.jpg"),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
              width: Adaptive.w(100),
              height: Adaptive.h(70),
              child: Column(
                children: [
                  SizedBox(
                    height: Adaptive.h(30),
                  ),
                  SizedBox(
                    width: Adaptive.w(80),
                    child: Text(
                      "Are you planning to have a ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Adaptive.sp(20),
                        fontFamily: "KanitRegular",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Adaptive.w(80),
                    child: Text(
                      "destination wedding?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: Adaptive.sp(20),
                        fontFamily: "KanitRegular",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Adaptive.h(7),
                  ),
                  OutlinedButton(
                      style: Variables.botonNegro,
                      onPressed: () {},
                      child: Text(
                        "Let's talk",
                        style: TextStyle(
                          fontSize: Adaptive.sp(15),
                          fontFamily: "KanitRegular",
                        ),
                      ))
                ],
              ),
            ),
          ),
          Container(
            width: Adaptive.w(100),
            height: Adaptive.h(170),
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Text(
                  "Our services",
                  style: TextStyle(
                    fontSize: Adaptive.sp(23),
                    color: Colors.white,
                    fontFamily: "KanitRegular",
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Image.asset(
                  "assets/images/copas.png",
                  height: Adaptive.h(30),
                ),
                Text(
                  "Venue selection and management",
                  style: TextStyle(
                      fontFamily: "KanitMedium",
                      color: Colors.white,
                      fontSize: Adaptive.sp(18)),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Image.asset(
                  "assets/images/flowers.png",
                  height: Adaptive.h(30),
                ),
                Text(
                  "Design and decor",
                  style: TextStyle(
                      fontFamily: "KanitMedium",
                      color: Colors.white,
                      fontSize: Adaptive.sp(18)),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Image.asset(
                  "assets/images/order.png",
                  height: Adaptive.h(15),
                ),
                Text(
                  "Transportation and accomodation",
                  style: TextStyle(
                      fontFamily: "KanitMedium",
                      color: Colors.white,
                      fontSize: Adaptive.sp(18)),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Image.asset(
                  "assets/images/mundo.png",
                  height: Adaptive.h(15),
                ),
                Text(
                  "Vendor management",
                  style: TextStyle(
                      fontFamily: "KanitMedium",
                      color: Colors.white,
                      fontSize: Adaptive.sp(18)),
                ),
                SizedBox(
                  height: Adaptive.h(10),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Unforgettable Events",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular",
                        fontSize: Adaptive.sp(23),
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Tailored to Your",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular",
                        fontSize: Adaptive.sp(23),
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Every Need",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular",
                        fontSize: Adaptive.sp(23),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Adaptive.h(5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My recent events",
                style: TextStyle(
                    fontFamily: "KanitRegular", fontSize: Adaptive.sp(22)),
              ),
              SizedBox(
                height: Adaptive.h(4),
              ),
              SizedBox(
                width: Adaptive.w(80),
                child: Text(
                  "As your event planner, my mission is to create beautiful and timeless memories that you can cherish forever",
                  style: TextStyle(
                      fontFamily: "KanitMedium", fontSize: Adaptive.sp(18)),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),
              InkWell(
                onTap: () {
                  Variables.galery = Variables.galery1;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/1/al1.jpg",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery2;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/2/cs1.jpg",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery3;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/3/gl1.png",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery4;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/4/g2_1.png",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery5;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/5/vc1.jpg",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery6;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/6/md1.jpg",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),InkWell(
                onTap: () {
                  Variables.galery = Variables.galery7;
                  context.vRouter.to("/galery");
                },
                child: Image.asset(
                  "assets/images/galery/7/gt1.jpg",
                  width: Adaptive.w(80),
                ),
              ),
              SizedBox(
                height: Adaptive.h(5),
              ),
              SizedBox(
                height: Adaptive.h(5),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/p4_1.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Text(
                  "Kind Words",
                  style: TextStyle(
                      fontFamily: "KanitRegular", fontSize: Adaptive.sp(28)),
                ),
                Text(
                  "from my clients",
                  style: TextStyle(
                      fontFamily: "KanitRegular", fontSize: Adaptive.sp(18)),
                ),
                SizedBox(
                  width: Adaptive.w(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/flecha.png",
                        width: Adaptive.w(15),
                      ),
                      Text(
                        "0/6",
                        style: TextStyle(
                            fontFamily: "KanitRegular",
                            fontSize: Adaptive.sp(18)),
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Image.asset(
                            "assets/images/flecha.png",
                            width: Adaptive.w(15),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Image.asset(
                  "assets/images/logo_lulu.png",
                  width: Adaptive.w(45),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Adaptive.h(3),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Adaptive.w(10)),
            child: Column(
              children: [
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Let's talk",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular", fontSize: Adaptive.sp(25)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Whether you're planning a wedding, a corporate event, or a social gathering, we're here to assist you every step of the way. We offer a range of services, including venue selection, vendor management, event design, and more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitMedium", fontSize: Adaptive.sp(17)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular", fontSize: Adaptive.sp(22)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(3),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "info@lulukennedy.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitMedium", fontSize: Adaptive.sp(17)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Socials",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular", fontSize: Adaptive.sp(22)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(3),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Instagram",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular", fontSize: Adaptive.sp(22)),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(3),
                ),
                SizedBox(
                  width: Adaptive.w(80),
                  child: Text(
                    "Facebook",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "KanitRegular", fontSize: Adaptive.sp(22)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Adaptive.w(70),
            child: Column(
              children: [
                SizedBox(
                  width: Adaptive.w(70),
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
                            borderRadius: BorderRadius.all(
                                Radius.circular(Variables.borderRadiusInput))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Variables.colorGris),
                            borderRadius: BorderRadius.all(
                                Radius.circular(Variables.borderRadiusInput))),
                        floatingLabelStyle:
                            const TextStyle(color: Colors.black),
                        label: const Text("NAME")),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(3),
                ),
                SizedBox(
                  width: Adaptive.w(70),
                  child: Column(
                    children: [
                      SizedBox(
                        width: Adaptive.w(70),
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
                                  borderSide:
                                      const BorderSide(color: Colors.black),
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
                        width: Adaptive.w(70),
                        child: Column(
                          children: [
                            SizedBox(
                              width: Adaptive.w(70),
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
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Variables.colorGris),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
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
                        width: Adaptive.w(70),
                        child: Column(
                          children: [
                            SizedBox(
                              width: Adaptive.w(70),
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
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Variables.colorGris),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
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
                        width: Adaptive.w(70),
                        child: Column(
                          children: [
                            SizedBox(
                              width: Adaptive.w(70),
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
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Variables.colorGris),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                Variables.borderRadiusInput))),
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
                      SizedBox(
                        width: Adaptive.w(40),
                        child: OutlinedButton(
                            style: Variables.botonNegro,
                            onPressed: () {},
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontFamily: "KanitMedium",
                                  fontSize: Adaptive.sp(15)),
                            )),
                      ),
                      SizedBox(
                        height: Adaptive.h(3),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 65, 65, 65),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo_lulu.png",
                  width: Adaptive.w(65),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(10)),
                  child: SizedBox(
                    width: Adaptive.w(80),
                    child: Text(
                      "We look forward to hearing from you!",
                      style: TextStyle(
                          fontFamily: "KanitRegular",
                          fontSize: Adaptive.sp(20)),
                    ),
                  ),
                ),
                SizedBox(
                  height: Adaptive.h(5),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: Adaptive.w(50),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Text("Services",
                              style: TextStyle(
                                  fontFamily: "KanitRegular",
                                  fontSize: Adaptive.sp(22))),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Text("Elopment weddings",
                              style: TextStyle(
                                  fontFamily: "KanitMedium",
                                  fontSize: Adaptive.sp(16))),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Text("Social meeting",
                              style: TextStyle(
                                  fontFamily: "KanitMedium",
                                  fontSize: Adaptive.sp(16))),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Text("Corporate meeting",
                              style: TextStyle(
                                  fontFamily: "KanitMedium",
                                  fontSize: Adaptive.sp(16))),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Text("Weddings",
                              style: TextStyle(
                                  fontFamily: "KanitMedium",
                                  fontSize: Adaptive.sp(16))),
                          SizedBox(
                            height: Adaptive.h(3),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Adaptive.w(50),
                      child: Column(
                        children: [
                          Text("Stalk my socials",
                              style: TextStyle(
                                  fontFamily: "KanitRegular",
                                  fontSize: Adaptive.sp(22))),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.mail_lock_outlined),
                              SizedBox(
                                width: Adaptive.w(1),
                              ),
                              Text("info@lulukennedy.com",
                                  style: TextStyle(
                                      fontFamily: "KanitMedium",
                                      fontSize: Adaptive.sp(16)))
                            ],
                          ),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.phone_android_rounded),
                              SizedBox(
                                width: Adaptive.w(1),
                              ),
                              Text("+91 98765 43210",
                                  style: TextStyle(
                                      fontFamily: "KanitMedium",
                                      fontSize: Adaptive.sp(16)))
                            ],
                          ),
                          SizedBox(
                            height: Adaptive.h(3),
                          ),
                          Row(children: [
                            const Icon(Icons.gps_fixed_rounded),
                            SizedBox(
                              width: Adaptive.w(1),
                            ),
                            SizedBox(
                              width: Adaptive.w(40),
                              child: Text("772 Lyonwood Ave Walnut, CA 91789",
                                  style: TextStyle(
                                      fontFamily: "KanitMedium",
                                      fontSize: Adaptive.sp(16))),
                            )
                          ])
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: Adaptive.h(7),
            color: const Color.fromARGB(255, 58, 118, 167),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: Adaptive.w(30),
                  child: Text(
                    "2023 Lulú Kennedy. All rights reserved",
                    style: TextStyle(
                        fontFamily: "KanitMedium",
                        fontSize: Adaptive.sp(14),
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: Adaptive.w(30),
                  child: Text(
                    "Hecho con amor por @amparo.rubiweb & @cesar.melchorg",
                    style: TextStyle(
                        fontFamily: "KanitMedium",
                        fontSize: Adaptive.sp(14),
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: Adaptive.w(30),
                  child: Text(
                    "Terms & conditions | Privacy Policy | Sitemap | Disclaimer",
                    style: TextStyle(
                        fontFamily: "KanitMedium",
                        fontSize: Adaptive.sp(14),
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
