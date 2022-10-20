import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(

      slivers: <Widget>[
        //2
        SliverAppBar(
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: const Text('SliverAppBar',textScaleFactor: 1,style: TextStyle(color: Colors.white),),
            background: Image.asset(
              'assets/github.jpg',
              fit: BoxFit.fill,

            ),
          ),
        ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color:
                index % 2 == 0 ? Color(0xFF483d8b) : Color(0xFF4169e1),
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  "Öğe $index",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            );
          },
        //20 Öğe'nin görüntülenmesi sağlanır.
          childCount: 21,
        ),
      ),
        ],

      ),
    );
  }
}
