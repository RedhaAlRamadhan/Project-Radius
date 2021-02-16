import 'package:flutter/material.dart';
import 'package:project/model/mountain.model.dart';
import 'package:project/widgets/menu/popularcard.widget.dart';

class PopularList extends StatefulWidget {
  final List<Mountain> listPopular;

  const PopularList({
    Key key,
    @required this.listPopular,
  }) : super(key: key);
  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Text(
              "Tempat populer",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: size.width * 0.045,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.listPopular.length,
              itemBuilder: (context, index) => buildPopularCard(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPopularCard(int index) {
    return PopularCard(
      recent: widget.listPopular[index],
      isSaved: widget.listPopular[index].isSaved,
      onSaved: () {
        widget.listPopular[index].isSaved = !widget.listPopular[index].isSaved;
        setState(() {});
      },
      onPress: () {},
    );
  }
}
