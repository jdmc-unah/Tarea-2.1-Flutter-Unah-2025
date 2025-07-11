import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page_jdmc/validations/registerVal.dart';
import 'package:login_page_jdmc/widgets/myTextField.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final userController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage('assets/animal.png'),
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(height: 20),

                  Text(
                    'Crea tu cuenta',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 30),

              MyTextField(
                prefixIcon: Icons.person_outline_outlined,
                topText: 'Nombre ',
                hintText: 'Ingrese su nombre',
                controller: userController,
              ),

              SizedBox(height: 10),

              MyTextField(
                prefixIcon: Icons.email_outlined,
                topText: 'Correo ',
                hintText: 'Ingrese su correo',
                controller: emailController,
              ),

              SizedBox(height: 10),

              MyTextField(
                prefixIcon: Icons.phone_outlined,
                topText: 'Teléfono ',
                hintText: 'Ingrese su teléfono',
                controller: phoneController,
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

              SizedBox(height: 40),

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
                  onPressed: () {
                    String error = validaRegistro(
                      userController.text,
                      emailController.text,
                      phoneController.text,
                      pwController.text,
                    );

                    if (error == '') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: const Color.fromARGB(
                            255,
                            18,
                            169,
                            56,
                          ),

                          action: SnackBarAction(
                            label: 'Continuar al login',
                            onPressed: () {
                              context.goNamed('login');
                            },
                          ),
                          content: Text(
                            'Se guardo el usuario con éxito',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          action: SnackBarAction(
                            label: 'Cerrar',
                            onPressed: () {},
                          ),
                          content: Text(
                            error,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }
                  },
                  child: Text('Registrarse'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
