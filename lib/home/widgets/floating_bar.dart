import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Type a Message ...",
              hintStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",
                fontSize: 12,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(39),
                borderSide: BorderSide(color: Color(0xFF168C4B), width: 1),
              ),
              contentPadding: EdgeInsets.all(16),
              prefixIcon: Padding(
                padding: EdgeInsetsGeometry.fromLTRB(16, 0, 10, 0),
                child: SvgPicture.asset(
                  "assets/images/Camera.svg",
                  width: 24,
                  height: 24,
                ),
              ),
              suffixIcon: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 22),
                child: SvgPicture.asset(
                    "assets/images/Send.svg",
                  width: 24,
                  height: 24,
                ),
              )
            ),
          ),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            color: Color(0xFF168C4B),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/images/Mic.svg",
              width: 24,
              height: 24,

              colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn),
            ),
          ),
        ),
      ],
    );
  }
}
