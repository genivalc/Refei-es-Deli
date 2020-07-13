import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        
        maxCrossAxisExtent: 200, // tamanho maximo de cada elemento
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        crossAxisSpacing: MediaQuery.of(context).size.aspectRatio * 20, // espaço
        mainAxisSpacing: MediaQuery.of(context).size.aspectRatio * 20, //espaço
        
      ),
      children: DUMMY_CATEGORIES.map((cat) {
        return CategoryItem(cat);
      }).toList(),
    );
  }
}
