import 'package:accelerhealth/constants/app_colors.dart';
import 'package:accelerhealth/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accelerhealth Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: PageView(
        children: [
          Home(),
          Center(child: Text('Second Page'),),
          Center(child: Text('Third Page'),),
          Center(child: Text('Fourth Page'),)
        ],
        controller: _pageController,
        onPageChanged: _updateIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _handlePageChange,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/Vectorcard.png', width: 20, height: 20,),
            label: '',
            activeIcon: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(15),
              child: Image.asset('images/Vectorcard.png',),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(25)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Vectorfolder.png', width: 20, height: 20,),
            label: '',
            activeIcon: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(15),
              child: Image.asset('images/Vectorfolder.png',),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(25)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Vectordoc.png', width: 20, height: 20,),
            label: '',
            activeIcon: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(15),
              child: Image.asset('images/Vectordoc.png',),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(25)
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/Vectorcalender.png', width: 20, height: 20,),
            label: '',
            activeIcon: Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(15),
              child: Image.asset('images/Vectorcalender.png',),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(25)
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _updateIndex(int i) {
    setState(() {
      _index = i;
    });
  }

  _handlePageChange(int position) {
    setState(() {
      _index = position;
      _pageController.animateToPage(position, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    });
  }
}
