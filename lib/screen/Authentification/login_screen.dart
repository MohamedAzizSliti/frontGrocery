import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front/utils/app_getData.dart';
import 'package:front/utils/app_layout.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Column(
            children: [
              Gap(20),
              Container(
                  padding: EdgeInsets.all(60),
                  child: Image.asset(
                    "images/logo.png",
                    width: 50,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Loging",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    "Enter your email and your password",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Gap(40),
                  Text("UserName",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                      )),
                  TextField(
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration:
                        InputDecoration(hintText: 'Please enter your username'),
                  ),
                  Gap(40),
                  Text("Password",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                      )),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Please enter your password',
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Forget Password?",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Ink(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: size.width * 0.9,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xFF53b175),
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Gap(18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have a account ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Signup ",
                    style: TextStyle(
                        color: Color(0xFF53b175),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )),
    );
  }
}
