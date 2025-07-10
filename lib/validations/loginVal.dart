import 'package:login_page_jdmc/data/users.dart';

String validaInicioSesion(String correo, String contra) {
  bool credencialesCorrectas = false;
  String error = '';

  //Valida que todos los campos esten llenos
  Map<String, String> params = {'correo': correo, 'contraseña': contra};

  for (var param in params.entries) {
    if (param.value.isEmpty) {
      return 'ERROR: El campo ${param.key} no puede estar vacío';
    }
  }

  //Valida que el correo y la contraseña sean correctos
  for (var usuario in usuarios) {
    if (usuario["correo"] == correo && usuario["contrasena"] == contra) {
      credencialesCorrectas = true;
    } else {
      error = 'ERROR: Correo o contraseña incorrecta. \nIntente de nuevo.';
    }
  }

  return credencialesCorrectas ? '' : error;
}
