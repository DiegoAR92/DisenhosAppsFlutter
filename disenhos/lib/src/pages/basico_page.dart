import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estriloTitulo = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final estriloSubTitulo = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ]),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      child: Image(
        width: double.infinity,
        image: NetworkImage(
            'https://cdn.dribbble.com/users/1303264/screenshots/5781756/landscape-mountains-dribbble.jpg'),
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paisaje de montañas",
                    style: estriloTitulo,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "La imagen esta sacada de internet.",
                    style: estriloSubTitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, "Call"),
        _accion(Icons.near_me, "Route"),
        _accion(Icons.share, "Shere")
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
          'Sint aute id proident adipisicing aliquip laborum culpa non consequat exercitation. Ex duis culpa esse est enim proident aliquip occaecat. Eiusmod exercitation do exercitation proident sint duis anim aliqua duis elit ullamco commodo. Commodo sunt sint ad in dolore irure.'),
    );
  }
}
