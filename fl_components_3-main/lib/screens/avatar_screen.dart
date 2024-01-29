import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('AG'),
              backgroundColor: Colors.lightGreenAccent,
            ),
          )
        ]
      ),
      
      body: Center(
         child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://es.web.img2.acsta.net/medias/nmedia/18/97/12/98/20510121.jpg'),
         ),
      ),
    );
  }
}