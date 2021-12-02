import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_egresados/ui/pages/authentication/login/login_screen.dart';
import 'package:red_egresados/ui/pages/authentication/signup/singup_screen.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Inicio> {
  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Center(
                  child: CircleAvatar(
                    minRadius: 200.0,
                    maxRadius: 200.0,
                    backgroundImage: NetworkImage(
                        'https://www.textbroker.es/wp-content/uploads/sites/7/2017/09/1823382-750x447.jpg'),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/auth');
                    },
                    child: const Text('Navegacion'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
