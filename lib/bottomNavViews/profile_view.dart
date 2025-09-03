import 'package:flutter/material.dart';
import 'package:foodapp/auth/controller/auth_controller.dart';
import 'package:foodapp/auth/model/user_model.dart';
import 'package:foodapp/views/auth/sign_up_view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final accessToken = GetStorage().read('accessToken');
    if (accessToken == null) {
      return SignUpView();
    }
    AuthController authController = Get.put(AuthController());
    UserModel? user = authController.userData();
    return ListView(
      children: [
        Container(
          color: Colors.white12,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 35.0,
                      backgroundImage: NetworkImage(
                        'https://tse2.mm.bing.net/th/id/OIP.BVqRl5JkZkoe4SuUU2ENggHaHa?pid=Api&P=0&h=220',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(user!.email),
                    SizedBox(height: 10),
                    Text(
                      user.username,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
