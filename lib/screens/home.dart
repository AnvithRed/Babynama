import 'package:babynama/screens/faq.dart';
import 'package:babynama/widgets/carousal.dart';
import 'package:flutter/material.dart';

import '../widgets/monthbutt.dart';
import '../widgets/navwidget.dart';
import '../widgets/plans.dart';
import '../widgets/video.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

bool _customTileExpanded = false;

class _HomeState extends State<Home> {
  String selectedButton = "1 Month";
  String cost = "Original Cost";

  void handleButtonPressed(String button) {
    setState(() {
      selectedButton = button;
      if (selectedButton == '1 Month') {
        cost = 'Original Cost';
      } else if (selectedButton == '3 Month') {
        cost = 'New Cost';
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 239, 246, 255),
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(242, 244, 246, 255)),
              currentAccountPictureSize: Size.square(100.0),
              accountName: Text("Anvith Reddy"),
              accountEmail: Text("Anvithreddy@gmail.com"),
              currentAccountPicture: Image.asset("images/logo.png"),
            ),
            navwidget(title: "Home"),
            navwidget(title: "Care Plans"),
            navwidget(title: "Testimonials"),
            navwidget(title: "About"),
            navwidget(title: "Our Doctors"),
            ExpansionTile(
              title: Text('Pages'),
              children: <Widget>[
                ListTile(
                  leading: Text('Blog'),
                  onTap: () {},
                ),
                ListTile(
                    leading: Text('Baby Solids Introduction'), onTap: () {}),
                ListTile(leading: Text('Yoga'), onTap: () {}),
                ListTile(leading: Text('Preview Access'), onTap: () {}),
              ],
            ),
          ],
        )),
        appBar: AppBar(
          title: Image.asset(
            "images/logo.png",
            height: 20,
          ),
        ),
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            //  height: MediaQuery.of(context).size.height,
            child: Column(children: [
              const Center(
                child: Text(
                  "Our Care Plans",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NewWidget(
                    mon: "1 Month",
                    onChanged: (value) {
                      setState(() {
                        selectedButton = value;
                        cost = "Original Cost";
                      });
                    },
                  ),
                  NewWidget(
                    mon: "3 Month",
                    onChanged: (value) {
                      setState(() {
                        selectedButton = value;
                        cost = "New Cost";
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Plans(
                  desc: "Pediatric care in 15 minutes",
                  desc2: "Instant chat with pediatricians on WhatsApp",
                  desc3: "Free pediatrician consultations (day)",
                  desc4: "Live Yoga Sessions",
                  cost: "₹999",
                  type: "Basic Care", 
                  onButtonPressed: handleButtonPressed),
              Plans(
                  desc:
                      "Pediatric care in 15 minutes, lactation, nutrition, monthly milestones, emergency support",
                  desc2: "Everything in Basic Care",
                  desc3: "24x7 free pediatrician consultations",
                  desc4:
                      "Monthly growth and milestones tracking by pediatrician",
                  desc5: "Lactation and Weaning Support",
                  cost: "₹1999",
                  type: "Prime Care",
                   onButtonPressed: handleButtonPressed),
              Plans(
                   onButtonPressed: handleButtonPressed,desc:
                      "Dedicated pediatrician for your baby, personal care plan, Best possible baby care",
                  desc2: "Everything included in the PRIME Plan",
                  desc3: "Dedicated pediatrician just for your baby",
                  desc4: "Personalized care plan for your baby and you",
                  desc5: "All Consultations and workshops free*",
                  desc6:
                      "We keep adding new services to provide more value to you",
                  cost: "₹3998",
                  type: "Holistic Care"),
              Container(
                padding: EdgeInsets.all(20),
                child: const Column(children: [
                  Text(
                    "Hear from Babynama Parents",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text(
                    "We are proud to have helped thousands of parents",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ]),
              ),
              VideoCarousel(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child:  Column(children: [
                  Text(
                    "Still, having a doubt!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  OutlinedButton(
                      onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => faq()),
    );},
                     style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(70, 50),
                    backgroundColor: Colors.blue,
                  ),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))
                ]),
              ),
            ]),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
