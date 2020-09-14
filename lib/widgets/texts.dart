import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String name;
  final String image;
  final String msg;
  final bool isSeen;
  final int id;

  const Texts({Key key, this.name, this.image, this.msg, this.isSeen, this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 1),
      color: Colors.black,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("images/$image"),
        ),
        title: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        subtitle: Text(
          msg,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        trailing: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSeen ? Colors.black : Colors.blue,
          ),
        ),
      ),
    );
  }
}
