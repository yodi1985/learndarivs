import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngulang_latihan/constant/app_color.dart';
import 'package:ngulang_latihan/constant/app_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppImage.optionIcon),
                Image.asset(AppImage.userDefaultImage),
              ],
            ),
            Text("Heloo, $userName"),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Password",
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  fillColor: AppColor.secondaryWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
