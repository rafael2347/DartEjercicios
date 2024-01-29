import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon ( Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Aquí ponemos el titulo del card'),
            subtitle: Text('Lorem quis anim occaecat et officia sunt quis laborum nostrud eiusmod tempor. Ipsum eu deserunt duis tempor aliquip ea cillum Lorem eu elit. Excepteur culpa eiusmod commodo sint incididunt occaecat consequat amet ullamco commodo ut. Sunt laboris consequat qui aute aute sint labore laboris aliqua qui ullamco. Lorem amet velit ipsum irure. Nisi eiusmod consequat laboris dolore proident dolore proident tempor duis.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:() {}, 
                  child: Text('Cancelar'),
                ),
                TextButton(
                  onPressed:() {}, 
                  child: Text('Aceptar')
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}