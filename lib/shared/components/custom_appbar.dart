import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  Widget _logo() {
    return Container(
      child: Image.asset(
        "assets/images/youtube.png",
        height: 50,
        width: 70,
      ),
    );
  }
  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 23,
            height: 23,
            color: Colors.white,
            child: SvgPicture.asset("assets/svg/icons/bell.svg",),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Get.toNamed("/search");
            },
            child: Container(
              color: Colors.white,
              width: 30,
              height: 30,
              child: SvgPicture.asset("assets/svg/icons/search.svg",),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: AssetImage("assets/images/fedo.jpg"),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _logo(),
            _actions(),
          ],
        ));
  }
}
