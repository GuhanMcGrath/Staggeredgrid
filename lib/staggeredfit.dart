import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid/images.dart';

class StaggeredFit extends StatefulWidget {
  const StaggeredFit({Key? key}) : super(key: key);

  @override
  _StaggeredFitState createState() => _StaggeredFitState();
}

class _StaggeredFitState extends State<StaggeredFit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fit Staggered"),
      ),
      body: SafeArea(
          child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              itemCount: items.length,
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: index.isEven ? 300 : 140,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          image: items[index], fit: BoxFit.cover)),
                );
              })),
    );
  }
}
