import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid/images.dart';

class ExtentStaggered extends StatefulWidget {
  const ExtentStaggered({Key? key}) : super(key: key);

  @override
  _ExtentStaggeredState createState() => _ExtentStaggeredState();
}

class _ExtentStaggeredState extends State<ExtentStaggered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: SafeArea(
          child: StaggeredGridView.extentBuilder(
              maxCrossAxisExtent: 150,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: items.length,
              staggeredTileBuilder: (index) =>
                  StaggeredTile.extent(1, index.isOdd ? 130 : 250),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: items[index], fit: BoxFit.cover)),
                );
              })),
    );
  }
}
