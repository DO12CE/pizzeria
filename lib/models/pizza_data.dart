import 'package:mapizzeria/models/pizza.dart';

class PizzaData{
  static List<Pizza> buildList(){
    List<Pizza> list = [];
    list.add(Pizza(id: 1, title: 'Barbecue', garniture: 'Mozzarella, chèvre, emmental, roquefort', image: 'pizza-bbq.png', price: 8));
    list.add(Pizza(id: 2, title: 'Hawaï', garniture: 'Jambon, ananas, mozzarella', image: 'pizza-hawai.png', price: 9));
    list.add(Pizza(id: 3, title: 'Epinards', garniture: 'Tomate, mozzarella, basilic', image: 'pizza-spinach.png', price: 7));
    list.add(Pizza(id: 4, title: 'Végé', garniture: 'Lardons, oignons, champignons, mozzarella', image: 'pizza-vegetable.png', price: 10));
    
    return list;

  }
}