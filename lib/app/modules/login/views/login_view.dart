import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
        ? EdgeInsets.all(Get.width * 0.1)
        : EdgeInsets.all(Get.height * 0.1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(children: [
        // biru
        !context.isPhone?
        Expanded(child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), 
            bottomLeft: Radius.circular(50)),
            color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                const Text('Welcome', 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 70, ),
                  ),
                const Text('Please Sign In',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 30, ),
                ),
                const Text('Start Journey With Us',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 20, ),
                ),
              ]),
            ),
        ),
        )
        : const SizedBox(),
        // putih
        Expanded(
          child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
            topRight: Radius.circular(50), 
            bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              context.isPhone?
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                const Text('Welcome', 
                style: TextStyle(
                  color: Colors.grey, 
                  fontSize: 70, ),
                  ),
                const Text('Please Sign In',
                style: TextStyle(
                  color: Colors.grey, 
                  fontSize: 30, ),
                ),
                const Text('Start Journey With Us',
                style: TextStyle(
                  color: Colors.grey, 
                  fontSize: 20, ),
                ),
              ]): const SizedBox(),
            Image.asset('assets/images/login.jpg',
          height: Get.height * 0.5,
          ),
          FloatingActionButton.extended(onPressed: () => Get.toNamed(Routes.HOME),
          label: const Text('Sign In With Google'), 
          icon: const Icon(LineIcons.gofore , color: Colors.white),
          )
          ]),
          ),
          )
      ]),
      ),
      );
  }
}
