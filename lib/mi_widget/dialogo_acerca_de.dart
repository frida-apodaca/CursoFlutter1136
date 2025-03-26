import 'package:flutter/material.dart';

class DialogoAcercaDe extends StatefulWidget {
  const DialogoAcercaDe({Key? key}) : super(key: key);

  @override
  State<DialogoAcercaDe> createState() => _DialogoAcercaDeState();
}

class _DialogoAcercaDeState extends State<DialogoAcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Mostrar Dialogo Acerca De...'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AboutDialog(
              // Eliminar 'const' aquí
              applicationIcon: const FlutterLogo(), // Mantener 'const' aquí
              applicationLegalese: 'legal',
              applicationName: 'Flutter App 1136',
              applicationVersion: 'version 1.0.0',
              children: const [
                Text('Este texto es creado por alerta')
              ], // Mantener 'const' aquí
            ),
          );
        },
      ),
    );
  }
}
