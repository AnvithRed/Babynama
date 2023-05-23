import 'package:babynama/widgets/ex.dart';
import 'package:flutter/material.dart';

import '../widgets/contacts.dart';
import '../widgets/navwidget.dart';

class faq extends StatelessWidget {
  const faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(235, 242, 252, 255),
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
          child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
              "FAQs for Our Care Plans",textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  decorationColor: Colors.black,
                
                 
                  color: Colors.black),
            ),
          
          faqExpansionTile(),
           const SizedBox(height: 16),
          Text(
              "Do you have other questions?",textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  decorationColor: Colors.black,
                
                 
                  color: Colors.black),
            ),
            ContactCard(),

         
        ],
      )),
    );
  }
}
