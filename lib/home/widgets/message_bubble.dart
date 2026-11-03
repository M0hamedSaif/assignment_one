import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  bool fromMe;
  String message;
  bool withPic;

  MessageBubble({
    this.fromMe = true,
    required this.message,
    this.withPic = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: fromMe
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.62,
          ),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 16),
          decoration: BoxDecoration(
            color: fromMe ? Color(0xFF232D36) : Color(0xFF168C4B),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
              topRight: fromMe ? Radius.circular(0) : Radius.circular(16),
              topLeft: fromMe ? Radius.circular(16) : Radius.circular(0),
            ),
          ),
          child: Column(
            spacing: 8,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontFamily: "Inter",
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (withPic)
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8),
                  child: Image.asset("assets/images/route.png"),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

/*
SizedBox(height: 20,),
        Text("from external row",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),)
*/
