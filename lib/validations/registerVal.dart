String validaRegistro(
  String nombre,
  String correo,
  String telefono,
  String contra,
) {
  //Valida que todos los campos esten llenos
  Map<String, String> params = {
    'nombre': nombre,
    'correo': correo,
    'telefono': telefono,
    'contraseña': contra,
  };

  for (var param in params.entries) {
    if (param.value.isEmpty) {
      return 'ERROR: El campo ${param.key} no puede estar vacío';
    }
  }

  //Valida longitud del correo
  if (correo.length < 10) {
    return 'ERROR: El correo debe tener mas de 10 caracteres ';
  }

  //Valida que el correo termine en @unah.hn
  if (correo.substring(correo.length - 8, correo.length) != '@unah.hn') {
    return 'ERROR: El correo debe estar dentro del dominio de @unah.hn';
  }

  //Valida longitud de contraseña
  if (contra.length < 6) {
    return 'ERROR: La contraseña debe tener al menos 6 caracteres';
  }

  //Valida que contraseña tenga al menos un caracter especial
  final RegExp regex = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');

  if (!regex.hasMatch(contra)) {
    return 'ERROR: La contraseña debe tener al menos 1 caracter especial';
  }

  return '';
}
