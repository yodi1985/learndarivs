import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ngulang_latihan/constant/app_color.dart';
import 'package:ngulang_latihan/constant/app_font.dart';
import 'package:ngulang_latihan/extension/navigation.dart';
import 'package:ngulang_latihan/view/login_page.dart';

class WelcomingPage extends StatelessWidget {
  const WelcomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Image.asset("assets/images/welcome.png"),
          const Text(
            "Discover Your Dream Job here",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 35),
          ),
          const SizedBox(height: 20),
          const Text(
            "Explore all the existing job roles based on your interest and study major",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Poppins"),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context.push(LoginPage());
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontFamily: AppFont.poppins,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      //      context.push(const LoginPage());
                    },
                    child: const SizedBox(
                      height: 50,
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: AppColor.blackColor,
                              fontFamily: AppFont.poppins,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text("Test Elevated Button")),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Or Login With",
            style: TextStyle(fontFamily: "Poppins", color: AppColor.blackColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconLogin("assets/icons/googleblack.svg"),
              const SizedBox(
                width: 20,
              ),
              iconLogin("assets/icons/appleblack.svg"),
              const SizedBox(
                width: 20,
              ),
              iconLogin("assets/icons/fbblack.svg"),
            ],
          )
        ]),
      ),
    );
  }

  Container iconLogin(String path) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: AppColor.iconLoginBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(path),
    );
  }
}
