import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            trailing: Icon( Icons.arrow_forward_ios_outlined ),
            title: Text( options[index] ),
            onTap: () {
              final casa = options[index];
              print( casa );
            },
          ), 
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length
      )
    );
  }
}