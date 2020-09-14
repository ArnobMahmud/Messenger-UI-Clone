import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/status_show.dart';
import 'package:messenger_clone/widgets/texts.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 1, right: 10, left: 10, bottom: 2),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Image.asset("images/day0.jpg")),
                ),
                Text(
                  'Chats',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      size: 35,
                    ),
                    color: Colors.white,
                    onPressed: () {}),
                    IconButton(
                    icon: Icon(
                      Icons.edit,
                      size: 35,
                    ),
                    color: Colors.white,
                    onPressed: () {})
                  ],
                ),
                  
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(
                    top: 7,
                    right: 14, 
                    left: 14,
                    bottom: 5),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(15)
                  ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0,),
                  child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                       //  color: Colors.white,
                      )
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 77,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 1),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[500],
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text('Add Story', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  StatusShow(
                    true,
                    img: "day1.png",
                    online: true,
                  ),
                  StatusShow(
                    true,
                    img: "day4.png",
                    online: true,
                  ),
                  StatusShow(false, img: "day3.jpg", online: false),
                  StatusShow(true, img: "day5.png", online: false),
                  StatusShow(false, img: "day2.png", online: true),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Texts(
              id: 1,
              name: "Hazen Wyatt",
              image: "day1.png",
              msg:
                  "Hey Arnob! Just forked your messenger-clone repo on github.",
              isSeen: false,
            ),
            SizedBox(
              height: 10,
            ),
            Texts(
              name: "Parker Bryson",
              image: "day3.jpg",
              msg: "Pulled a request to your RippleBee team!",
              isSeen: false,
            ),
            SizedBox(
              height: 10,
            ),
            Texts(
              name: "Alyssa Cooper",
              image: "day4.png",
              msg:
                  "Help me to find out the calling of a static variable inide from onPressed method!",
              isSeen: true,
            ),
            SizedBox(
              height: 10,
            ),
            Texts(
              name: "Rhett Ellie",
              image: "day5.png",
              msg:
                  "When will you complete the BackEnd Firebase API authentication of current project?",
              isSeen: false,
            ),
            SizedBox(
              height: 10,
            ),
            Texts(
              name: "Edward Hayden",
              image: "day2.png",
              msg:
                  "We are excited to get to work on your new mobile app, and we want to make sure you’re satisfied with our proposal!",
              isSeen: true,
            ),
            SizedBox(
              height: 10,
            ),
             Texts(
              name: "Ana Brooklyn",
              image: "day6.jfif",
              msg: "Just published a flutter project on RippleBee.Find that out!",
              isSeen: true,
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
