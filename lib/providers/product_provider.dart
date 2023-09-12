import 'package:flutter/material.dart';
import 'package:teste_tecnico/model/produto.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products = [
    Product(
      id: 123, 
      nome: "Camisa Algodão 100% Cinza", 
      preco: 123, 
      material: "Algodão",
      url: "https://malwee.vtexassets.com/arquivos/ids/642858-1200-auto?v=638234727268470000&width=1200&height=auto&aspect=true"
    )
  ];


    void deleteProduct(int index) {
    if (index >= 0 && index < products.length) {
      products.removeAt(index);
      notifyListeners(); 
    }
  }



void createProduct(Product newProduct) {
  products.add(newProduct);
  notifyListeners(); 
}


  List<Product> cart = [];

  double get cartTotalPrice {
   return 0/1;
  }
}