import 'package:flutter/material.dart';
import '../models/pizza.dart';
import '../styles/pizzeria_style.dart';
import '../services/pizzeria_service.dart'; 
class PizzaList extends StatefulWidget {
  @override
  _PizzaListState createState() => _PizzaListState();
}

class _PizzaListState extends State<PizzaList> {
  late Future<List<Pizza>> _pizzas;
PizzeriaService _service = PizzeriaService();

  @override
  void initState() {
    super.initState();
    _pizzas = _service.fetchPizzas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nos Pizzas'),
      ),
      body: FutureBuilder<List<Pizza>>(
        future: _pizzas,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildListView(snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(child: Text('Impossible de récupérer les données : ${snapshot.error}',
            style: PizzeriaStyle.errorTextStyle,),);}
            return Center(child: CircularProgressIndicator());
          },
      ),
    );
  }
}

_buildListView(List<Pizza> pizzas){
  return ListView.builder(
    padding:const EdgeInsets.all(8.0),
    itemCount: pizzas.length,
    itemBuilder: (context, index){
      return _buildRow(pizzas[index]);
    }
  );
}
Widget _buildRow(Pizza pizza) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(pizza.title),
          subtitle: Text(pizza.garniture),
          leading: const Icon(Icons.local_pizza),
        ),
        Image.asset('assets/images/pizza/${pizza.image}',
        height: 120,
        fit: BoxFit.fitWidth,
        ),
        Text(pizza.garniture),
        ElevatedButton(
          child: const Text("Commander"),
          onPressed:(){
            debugPrint('Commander une pizza ${pizza.title}');
          },
        ),
      ],
    );
  }