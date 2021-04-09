import 'package:flutter/material.dart';
import 'package:tienda/src/helpers/helpers.dart';
import 'package:tienda/src/widgets/agregar_carrito.dart';
import 'package:tienda/src/widgets/custom_appbar.dart';

import 'package:tienda/src/widgets/zapato_desc.dart';
import 'package:tienda/src/widgets/zapato_size.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();

    return Scaffold(
      // body: CustomAppBar( texto: 'For you' )
      // body: ZapatoSizePreview(),
      body: Column(
        children: <Widget>[
          CustomAppBar(texto: 'Para ti'),
          SizedBox(height: 20),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Hero(tag: 'zapato-1', child: ZapatoSizePreview()),
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "Nike Air Max 720 se hace más grande que nunca con la unidad Air más alta de Nike, que ofrece más aire bajo los pies para una comodidad inimaginable durante todo el día. ¿Air Max ha ido demasiado lejos? Eso esperamos.",
                ),
              ],
            ),
          )),
          AgregarCarritoBoton(monto: 180.0)
        ],
      ),
    );
  }
}
