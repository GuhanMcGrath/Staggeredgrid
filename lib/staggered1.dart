import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid/images.dart';

class StaggeredGrid extends StatefulWidget {
  const StaggeredGrid({Key? key}) : super(key: key);

  @override
  _StaggeredGridState createState() => _StaggeredGridState();
}

class _StaggeredGridState extends State<StaggeredGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: SafeArea(
          child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: items.length,
              staggeredTileBuilder: (index) =>
                  StaggeredTile.count(2, index.isEven ? 1 : 3),
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
