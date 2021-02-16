import 'package:flutter/material.dart';
import 'package:project/model/mountain.model.dart';

class PopularCard extends StatelessWidget {
  final Mountain recent;
  final Function onPress;
  final Function onSaved;
  final bool isSaved;

  const PopularCard({
    Key key,
    this.recent,
    this.onPress,
    this.onSaved,
    this.isSaved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.18),
              blurRadius: 8,
              offset: Offset(0, 1),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            ImageCard(
              imageSource: recent.image,
            ),
            ContentCard(
              title: recent.title,
              location: recent.location,
              // description: recent.description,
            ),
            Price(
              price: "asd",
            ),
          ],
        ),
      ),
    );
  }
}

// Widget Content List
class ContentCard extends StatelessWidget {
  const ContentCard({
    Key key,
    @required this.title,
    @required this.location,
    // @required this.description,
  }) : super(key: key);

  final String title, location;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.8,
      height: 100,
      margin: EdgeInsets.only(left: 100, top: 0),
      padding: EdgeInsets.only(left: 5, top: 25, bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.035,
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: 13,
                color: Colors.green,
              ),
              SizedBox(width: 5),
              Text(
                this.location,
                style: TextStyle(
                  fontSize: size.width * 0.03,
                ),
              ),
            ],
          ),
          // Text(
          //   this.description,
          //   style: TextStyle(
          //     fontWeight: FontWeight.w400,
          //     fontSize: size.width * 0.03,
          //   ),
          //   overflow: TextOverflow.ellipsis,
          //   maxLines: 3,
          // ),
        ],
      ),
    );
  }
}

//Price
class Price extends StatelessWidget {
  const Price({
    Key key,
    @required this.price,
    // @required this.description,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.8,
      height: 100,
      margin: EdgeInsets.only(left: (size.width / 1.2), top: 0),
      padding: EdgeInsets.only(
        left: 5,
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            this.price,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.035,
            ),
          ),

          // Text(
          //   this.description,
          //   style: TextStyle(
          //     fontWeight: FontWeight.w400,
          //     fontSize: size.width * 0.03,
          //   ),
          //   overflow: TextOverflow.ellipsis,
          //   maxLines: 3,
          // ),
        ],
      ),
    );
  }
}

// Widget Image List
class ImageCard extends StatelessWidget {
  final String imageSource;
  const ImageCard({
    Key key,
    @required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Image.asset(
        this.imageSource,
        fit: BoxFit.cover,
      ),
    );
  }
}
