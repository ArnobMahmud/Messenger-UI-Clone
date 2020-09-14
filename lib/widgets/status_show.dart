import 'package:flutter/material.dart';

class StatusShow extends StatelessWidget {
  final String img;
  final bool status;
  final bool online;
  final String name;

  const StatusShow(
    this.status, {
    Key key,
    this.img,
    @required this.online,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: status
                  ? Border.all(color: Colors.blue, width: 3)
                  : Border.all(color: Colors.black, width: 1),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[500],
              backgroundImage: AssetImage("images/$img"),
            ),
          ),
          Positioned(
            top: 44,
            right: 2,
            child: Visibility(
              visible: online,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
