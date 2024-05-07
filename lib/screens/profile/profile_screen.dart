import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Minha Conta",
              icon: "assets/icons/User Icon.svg",
              press: () => {},
            ),
            // ProfileMenu(
            //   text: "Notificações",
            //   icon: "assets/icons/Bell.svg",
            //   press: () {},
            // ),
            ProfileMenu(
              text: "Configurações",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            // ProfileMenu(
            //   text: "Centro de Ajuda",
            //   icon: "assets/icons/Question mark.svg",
            //   press: () {},
            // ),
            ProfileMenu(
              text: "Deslogar",
              icon: "assets/icons/Log out.svg",
              press: () {Navigator.pushNamed(context, SignInScreen.routeName);},
            ),
          ],
        ),
      ),
    );
  }
}
