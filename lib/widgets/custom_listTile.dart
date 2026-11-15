import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  String title;
  String subtitle;
   CustomListTile({super.key, required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(title),
      subtitle:Text(subtitle),
    );
  }
}