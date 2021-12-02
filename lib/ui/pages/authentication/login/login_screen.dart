import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onViewSwitch;

  const LoginScreen({Key? key, required this.onViewSwitch}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Iniciar sesión",
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          const Center(
            child: CircleAvatar(
              minRadius: 80.0,
              maxRadius: 80.0,
              backgroundImage: NetworkImage(
                  'https://www.textbroker.es/wp-content/uploads/sites/7/2017/09/1823382-750x447.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/content');
                    },
                    child: const Text("Ingresar"),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed('/inicio');
                    },
                    child: const Text("Regresar"),
                  ),
                ),
              )
            ],
          ),
          TextButton(
              onPressed: widget.onViewSwitch, child: const Text("Registrarse")),
          const Spacer(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
