import 'package:babynama/widgets/navwidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class thank extends StatelessWidget {
  final DateTime dateTime;

  const thank({Key? key, required this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd-MM-yyyy').format(dateTime);
    String formattedTime = DateFormat('HH:mm').format(dateTime);
    DateTime currentDate = DateTime.now();
    DateTime futureDate = currentDate.add(Duration(days: 30));    
    String planDate = DateFormat('dd-MM-yyyy').format(futureDate);

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
        ),
      ),
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          height: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              color: Colors.blue,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Center(
                      child: Text(
                        "Thank You",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          decorationColor: Colors.black,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                    ),
                    end( que: "Transaction ID",ans: "2378SG56X7D",),
                     end( que: "Transaction Date",ans: " $formattedDate",),
                      end( que: "Transaction Time",ans: "$formattedTime",),
                    
                  ],
                ),
              ),
            ),

            Card(
              
               margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              color: Colors.blue,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(height: 16),
                    Text("Your Plan Starts From $formattedDate and is valid through $planDate",style: TextStyle(fontSize: 30,color: Colors.white),),
                    SizedBox(height: 16),
                    Text("We Care Best For Your Baby",style: TextStyle(fontSize: 15,color: Colors.white),),
                    /*GradientText(
    'Gradient Text Example',
    style: TextStyle(
        fontSize: 40.0,
    ),
    colors: [
        Colors.blue,
        Colors.red,
        Colors.teal,
    ],
),*/

                  ],
                )

              ),
            )
          ],
        ),
      ),
    );
  }
}

class end extends StatelessWidget {
  final String que, ans;

  const end({Key? key, required this.que, required this.ans})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          que+" : "+ans,
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
        
      ],
    );
  }
}
