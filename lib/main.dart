import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:kartaca_makale/details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Animations Package'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e124d),
        title: Text(widget.title),
      ),
      body: Container(color: Color(0xffbab3d6)),
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(milliseconds: 750),
        openBuilder: (BuildContext context, VoidCallback _) {
          return DetailsPage();
        },
        closedElevation: 10,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        closedColor: Color(0xff1e124d),
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return Container(
            color: Color(0xff1e124d),
            height: 60,
            width: 60,
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
