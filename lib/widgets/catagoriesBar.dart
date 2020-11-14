import 'package:Customer/screens/categories.dart';
import 'package:Customer/widgets/catIcon.dart';
import 'package:flutter/material.dart';

class CatagoryBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Catagories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              FlatButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Categories())),
                  child: Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(fontSize: 12),
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ))
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: CatIcon('Footware', ''),
                    onPressed: () {},
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: CatIcon('Grocceries', ''),
                    onPressed: () {},
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: CatIcon('Hardware', ''),
                    onPressed: () {},
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: CatIcon('Stationary', ''),
                    onPressed: () {},
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0, minHeight: 0),
                    child: CatIcon('Clothing', ''),
                    onPressed: () {},
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
