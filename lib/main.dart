import 'package:flutter/material.dart';
import 'package:staggered_grid/staggered1.dart';
import 'package:staggered_grid/staggeredextend.dart';
import 'package:staggered_grid/staggeredfit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListButtons(),
    );
  }
}

class ListButtons extends StatefulWidget {
  const ListButtons({Key? key}) : super(key: key);

  @override
  _ListButtonsState createState() => _ListButtonsState();
}

class _ListButtonsState extends State<ListButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListButtons"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                title: "Staggered Grid",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StaggeredGrid()));
                }),
            SizedBox(
              height: 20,
            ),
            Container(
                title: "Extended Staggered",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExtentStaggered()));
                }),
            SizedBox(
              height: 20,
            ),
            Container(
                title: "Fit Staggered",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StaggeredFit()));
                }),
          ],
        ),
      )),
    );
  }
}

class Container extends StatelessWidget {
  String? title;
  Function? onTap;
  Container({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 258,
        height: 80,
        child: ElevatedButton(
            onPressed: () {
              onTap!();
            },
            child: Text(
              title!,
              style: TextStyle(fontSize: 25),
            )));
  }
}
