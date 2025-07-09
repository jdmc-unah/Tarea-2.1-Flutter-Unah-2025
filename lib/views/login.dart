import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page_jdmc/widgets/myTextField.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final emailController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/animal.png'),
                fit: BoxFit.contain,
              ),

              SizedBox(height: 20),

              Text(
                'Bienvenido !',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              Text('Ingresa tus datos para acceder al contenido.'),

              SizedBox(height: 30),

              MyTextField(
                prefixIcon: Icons.email_outlined,
                topText: 'Correo ',
                hintText: 'Ingrese su correo',
                controller: emailController,
              ),

              SizedBox(height: 10),

              MyTextField(
                prefixIcon: Icons.lock_outline_sharp,
                topText: 'Contraseña ',
                hintText: 'Ingrese la contraseña',
                ocultarEntrada: true,
                sufixIcon: Icons.visibility_off_outlined,
                controller: pwController,
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5139EF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Iniciar Sesión'),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: Divider(thickness: 2)),
                  Text(' ó ', style: TextStyle(fontWeight: FontWeight.w300)),
                  Expanded(child: Divider(thickness: 2)),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'No tienes una cuenta?  ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      context.goNamed('register');
                    },
                    child: Text('Regístrate'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
