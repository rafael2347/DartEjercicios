import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String imageUrl;
  final String? nombre;

  CustomCardTipo2({super.key, required this.imageUrl, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

          if( nombre != null ) 
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(nombre ?? 'Desconocido')
            ),
        ],
      ),
    );
  }
}