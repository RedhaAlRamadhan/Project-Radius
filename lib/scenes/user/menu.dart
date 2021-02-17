import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:project/widgets/menu/provincelist.widget.dart';
// import 'package:radius/widgets/menu/popularlist.widget.dart';
import 'package:project/model/resturant.dart';

class Menu extends StatelessWidget {
  final Resturant resturant;
  double price = 0;

  Menu({
    Key key,
    @required this.resturant,
  }) : super(key: key);

  // Menu({this.resturant = resturant});

  @override
  Widget build(BuildContext context) {
    final String title = resturant.title;

    // print(resturant.items[0].imageURL);

    return MaterialApp(
      title: title,
      home: Scaffold(
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        appBar: buildAppBar(title),
        body: Stack(
          children: [
            CustomScrollView(
              slivers: <Widget>[
                // Add the app bar to the CustomScrollView.
                SliverAppBar(
                  // Provide a standard title.

                  // title: Text(title),
                  // backgroundColor: Color(0xFFFFFF),

                  // Allows the user to reveal the app bar if they begin scrolling
                  // back up the list of items.
                  backgroundColor: Colors.black54,
                  floating: false,
                  pinned: false,
                  snap: false,
                  // Display a placeholder widget to visualize the shrinking size.
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                    // centerTitle: true,
                    // title: Text(title),
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          resturant.imageURL,
                          fit: BoxFit.cover,
                        ),
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, 0.5),
                              end: Alignment(0.0, 0.0),
                              colors: <Color>[
                                Color(0x60000000),
                                Color(0x00000000),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Make the initial height of the SliverAppBar larger than normal.
                  expandedHeight: 400,
                ),
                // Next, create a SliverList
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentHeader(
                    widget: Column(
                      // Format this to meet your need
                      children: <Widget>[
                        ProvinceList(),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  // Use a delegate to build items as they're scrolled on screen.
                  delegate: SliverChildBuilderDelegate(
                    // The builder function returns a ListTile with a title that
                    // displays the index of the current item.
                    (content, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 2.5,
                          horizontal: 5,
                        ),
                        child: Card(
                          elevation: 1,
                          // semanticContainer: true,
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                child: Image.network(
                                  resturant.items[index].imageURL,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    resturant.items[index].title,
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  resturant.items[index].price.toString(),
                                  style: TextStyle(fontSize: 24),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: resturant.items.length,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 15,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[400],
                ),
                height: 55,
                width: 432,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "View Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "50",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(String title) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      title: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black.withOpacity(0.8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
    );
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentHeader({this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 47.5,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        elevation: 5.0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 47.5;

  @override
  double get minExtent => 47.5;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
