

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class navwidget extends StatelessWidget {

  String title;
 
 navwidget( {required this.title,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(title),
    );
  
  }
}
