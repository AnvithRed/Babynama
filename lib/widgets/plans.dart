import 'package:babynama/screens/thank.dart';
import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  Plans({
    required this.desc,
    required this.desc2,
    required this.desc3,
    required this.desc4,
    required this.cost,
    required this.type,
    this.desc5,
    this.desc6,
    required this.onButtonPressed, // Add this line
  });

  final String type, desc, cost, desc2, desc3, desc4;
  final String? desc6;
  final String? desc5;
  final Function(String) onButtonPressed; // Add this line

  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  bool showAll = false;

  void toggleShowAll() {
    setState(() {
      showAll = !showAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              widget.type,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
              height: 20,
            ),
            Points(desc: widget.desc),
            if (showAll) Points(desc: widget.desc2),
            if (showAll) Points(desc: widget.desc3),
            if (showAll) Points(desc: widget.desc4),
            if (showAll) Points(desc: widget.desc5),
            if (showAll) Points(desc: widget.desc6),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              children: [
                Text(widget.cost, style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(40, 40),
                    backgroundColor: Color.fromARGB(255, 229, 231, 235),
                  ),
                  onPressed: toggleShowAll,
                  child: Text(
                    showAll ? 'Know Less' : 'Know More',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(40, 40),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    // Pass the selected button value to the callback
                    widget.onButtonPressed(widget.type);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thank(dateTime: DateTime.now())),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Points extends StatelessWidget {
  const Points({
    required this.desc,
  });

  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (desc != null)
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        SizedBox(width: 10),
        SizedBox(
          width: 297,
          child: Text(
            desc ?? '',
            style: TextStyle(fontSize: 20),
          ),
        ),
        // Use the null-coalescing operator to provide a default value
      ],
    );
  }
}
