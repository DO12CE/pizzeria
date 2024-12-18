// ignore_for_file: must_be_immutable, unused_field

import 'package:flutter/material.dart';
import 'package:mapizzeria/models/menu.dart';
import 'package:mapizzeria/ui/pizza_list.dart' as ui;
//import 'screens/pizza_list.dart' as screens;
void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzeria',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ui.PizzaList(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title, super.key}); 

  final String title;

  final List<Menu> _menus = [
    Menu(1, 'Entrées', 'entree.png', Colors.lightGreen),
    Menu(2, 'Pizzas', 'pizza.png', Colors.redAccent),
    Menu(3, 'Desserts', 'dessert.png', Colors.brown),
    Menu(4, 'Boissons', 'boisson.png', Colors.lightBlue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _menus.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              switch (_menus[index].type) {
                case 2: // Pizza
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ui.PizzaList()),
                  );
                  break;
              }
            },
            child: _buildRow(_menus[index]),
          ),
          itemExtent: 180,
        ),
      ),
    );
  }
}

Widget _buildRow(Menu menu) {
  return Container(
    height: 180,
    decoration: BoxDecoration(
      color: menu.color,
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
    ),
    margin: const EdgeInsets.all(4.0),
    child: Column(
      children: <Widget>[
        Expanded(
          child: Image.asset(
            'assets/images/menus/${menu.image}',
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    ),
  );

}

// class PizzaList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pizzas'),
//       ),
//       body: Center(
//         child: Text('Liste des Pizzas'),
//       ),
//     );
//   }
  
// }
