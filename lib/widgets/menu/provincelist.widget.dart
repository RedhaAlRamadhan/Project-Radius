import 'package:flutter/material.dart';

class ProvinceList extends StatefulWidget {
  @override
  _ProvinceListState createState() => _ProvinceListState();
}

class _ProvinceListState extends State<ProvinceList> {
  int indexOfProvince = 0;
  List<String> province = [
    "Burger",
    "Sides",
    "Drinks",
    "Combo",
    "HELLLLLLOOOOOOO",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(left: 10, top: 2.5),
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: province.length,
        itemBuilder: (context, index) => buildCard(index, context),
      ),
    );
  }

  Widget buildCard(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 15),
      child: GestureDetector(
        onTap: () {
          setState(() {
            indexOfProvince = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              province[index],
              style: TextStyle(
                fontSize: 20,
                color: index == indexOfProvince
                    ? Colors.black
                    : Colors.black.withOpacity(0.5),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              width: 50,
              height: 3,
              decoration: BoxDecoration(
                color: index == indexOfProvince
                    ? Colors.black
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
