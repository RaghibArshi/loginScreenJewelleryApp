import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pavitri_jewellers/BottomNavBar/BottomNavigationScreen.dart';
import 'package:pavitri_jewellers/Colors.dart';
import 'package:pavitri_jewellers/Reusable/ReusableWidgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 310,
                  color: Colors.orange.shade300,
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: deepBackgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/logo.png',
                          fit: BoxFit.fill,
                          height: 80.0,
                          width: 80.0,
                        ),
                        Text(
                          '𝓣𝓱𝓮 𝓙𝓮𝔀𝓮𝓵𝓵𝓮𝓻𝔂 𝓐𝓹𝓹',
                          style: TextStyle(
                              color: lightBackgroundColor,
                              fontSize: 22.0),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text(
                      'Login / Sign Up',
                      style: headingText(),
                    ),
                    lineSeparator(),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      'Enter your mobile number for OTP',
                      style: normalLightText(),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextField(
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.mobile_friendly,
                          color: darkTextColor,
                        ),
                        labelText: 'Mobile Number',
                        hintText: 'Enter your mobile number',
                        hintStyle: TextStyle(color: lightTextColor),
                        labelStyle: TextStyle(color: darkTextColor),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkTextColor, width: 2.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkTextColor, width: 2.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?", style: normalDarkText(),),
                        TextButton(
                            onPressed: (){
                              Get.to(BottomNavigationScreen());
                            },
                            child: Text('Explore As Guest', style: normalLightText(),)
                        )
                      ],
                    ),
                    const SizedBox(height: 50,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
