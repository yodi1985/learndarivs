import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngulang_latihan/constant/app_color.dart';
import 'package:ngulang_latihan/extension/navigation.dart';
import 'package:ngulang_latihan/view/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController textUserController = TextEditingController();
  final TextEditingController textPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkblueBg,
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: AppColor.darkblueBg,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: textUserController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Username",
                          filled: true,
                          fillColor: AppColor.secondaryWhiteColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: textPassController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          hintText: "Password",
                          filled: true,
                          fillColor: AppColor.secondaryWhiteColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot Password",
                          style: GoogleFonts.montserrat(),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        if (textUserController.text.isEmpty ||
                            textPassController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  "asdadad"))); // atau bisa pake dari third party misal toast cari di fluttergems.dev
                        }
                        context.push(HomePage(
                          userName: textUserController.text,
                        ));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
