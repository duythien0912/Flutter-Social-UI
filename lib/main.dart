import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _cuttentTab;
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: items.length);
    _tabController.addListener(() {
      setState(() {
        _cuttentTab = _tabController.index;
      });
    });
  }

  Tab buildTabItem(MenuItem item) {
    return Tab(
      icon: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: FlareActor(
            'assets/${item.name}.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _cuttentTab == items.indexOf(item) ? 'go' : 'idle',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(36, 42, 56, 1),
            boxShadow: [
              BoxShadow(
                blurRadius: 13.0,
                color: Colors.black.withOpacity(.5),
                offset: Offset(0.0, 6.0),
              ),
            ],
          ),
          child: TabBar(
            controller: _tabController,
            indicatorPadding: EdgeInsets.only(left: 13.0, right: 13.0),
            onTap: (index) {
              setState(() {
                _cuttentTab = index;
              });
            },
            tabs: items.map((k) {
              return buildTabItem(k);
            }).toList(),
          ),
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          Container(
            color: Color.fromRGBO(36, 42, 56, 1),
          ),
          ExploreScreen(),
          Container(
            color: Colors.lightGreen,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Center(
        child: Text(
          "like tinder but for dogs".toUpperCase(),

          textAlign: TextAlign.center,
          // textScaleFactor: 2,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.cyan,
            // letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}

List items = [
  MenuItem(x: -1.0, name: 'house', color: Colors.lightBlue[100]),
  MenuItem(x: -0.5, name: 'planet', color: Colors.purple),
  MenuItem(x: 0.0, name: 'camera', color: Colors.greenAccent),
  MenuItem(x: 0.5, name: 'bell', color: Colors.pink),
  MenuItem(x: 1.0, name: 'head', color: Colors.yellow),
];

class MenuItem {
  MenuItem({this.name, this.color, this.x});

  final Color color;
  final String name;
  final double x;
}
