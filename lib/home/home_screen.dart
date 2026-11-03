import 'package:assignment_one/home/widgets/floating_bar.dart';
import 'package:assignment_one/home/widgets/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),

      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        leading: UnconstrainedBox(
          child: SvgPicture.asset(
            "assets/images/Vector (Stroke).svg",
            height: 16,
            width: 9.02,
          ),
        ),
        titleSpacing: 0,
        title: Row(
          spacing: 7,
          children: [
            CircleAvatar(
              radius: 18.5,
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
            Text(
              "John Safwat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          UnconstrainedBox(
            child: SvgPicture.asset(
              "assets/images/Phone.svg", // ⚠️ استبدليها بمسار ملف الهاتف لديكِ
              height: 24, // يمكنك التحكم بالحجم المناسب هنا
              width: 24,
            ),
          ),
          SizedBox(width: 20),
          UnconstrainedBox(
            child: SvgPicture.asset(
              "assets/images/video.svg", // ⚠️ استبدليها بمسار ملف الهاتف لديكِ
              height: 24, // يمكنك التحكم بالحجم المناسب هنا
              width: 24,
            ),
          ),
          SizedBox(width: 26),

          UnconstrainedBox(
            child: SvgPicture.asset(
              "assets/images/More-vertical.svg", // ⚠️ استبدليها بمسار ملف الهاتف لديكِ
              height: 24, // يمكنك التحكم بالحجم المناسب هنا
              width: 24,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_pattern.png"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 33),
            child: Column(
              children: [
                MessageBubble(fromMe: false, message: "Hello !"),
                MessageBubble(message: "Hello !"),
                MessageBubble(
                  fromMe: false,
                  message:
                  "Hey! Have you ever thought about how random moments can "
                      "sometimes turn into the best memories?"
                      " It’s like the universe loves to "
                      "surprise us when we least expect it!",
                ),
                MessageBubble(
                  fromMe: false,
                  withPic: true,
                  message: "what a Great Content Tp learn Flutter",
                ),
                MessageBubble(message: "what a Great Content Tp learn Flutter"),

              ],

            ),
          ),
        ),
          Positioned(
            bottom:20 ,
            left: 16,
            right: 16,
            child: FloatingBar(),
          )]
      ),

    );
  }
}
