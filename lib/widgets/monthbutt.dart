import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewWidget extends StatefulWidget {
  final String mon;
  final ValueChanged<String> onChanged;

  const NewWidget({required this.mon, required this.onChanged});

  @override
  _NewWidgetState createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        widget.onChanged(widget.mon);
        setState(() {
          isSelected = true;
        });
      },
      child: Text(widget.mon,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      style: OutlinedButton.styleFrom(
        elevation: isSelected ? 20 : 0,
        minimumSize: Size(100, 50),
        backgroundColor: isSelected ? Colors.blue : Colors.white,
        primary: isSelected ? const Color.fromARGB(255, 243, 243, 242) : Colors.blue,
        side: BorderSide(color: Colors.blue, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
