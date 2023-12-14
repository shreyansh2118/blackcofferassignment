import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'Refine page.dart';
import 'colours.dart';
import 'mainScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColour,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Define the widgets for each tab
  final List<Widget> _widgetOptions = [
    PageWidget(text: 'Page 1'),
    Center(child: Text('Tab 2')),
    Center(child: Text('Tab 3')),
    Center(child: Text('Tab 4')),
    Center(child: Text('Tab 5')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.remove_red_eye,
              color: Color(0xFF264371),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Color(0xFF264371),
            ),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Color(0xFF264371),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_contact_calendar_rounded,
              color: Color(0xFF264371),
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Color(0xFF264371),
            ),
            label: 'Groups',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF264371), // Change the selected item color
        onTap: _onItemTapped,
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children:[
          SpeedDialChild(
              child: Icon(Icons.event_note_sharp),
              label: "Notes"
          ),
          SpeedDialChild(
              child: Icon(Icons.shopping_bag_sharp),
              label: "Jobs"
          ),
          SpeedDialChild(
              child: Icon(Icons.people),
              label: "Netclan Groups"
          ),
          SpeedDialChild(
              child: Icon(Icons.credit_card),
              label: "Business Cards"
          ),
          SpeedDialChild(
              child: Icon(Icons.cases_sharp),
              label: "Buy-Sell-Rent"
          ),
          SpeedDialChild(
              child: Icon(Icons.diamond_sharp),
              label: "Matrimony"
          ),
          SpeedDialChild(
              child: Icon(Icons.favorite,),
              label: "Dating"
          ),

        ],
      )
    );
  }
}

class PageWidget extends StatelessWidget {
  final String text;


  PageWidget({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Column(
            children: [
              Container(
                color: Color(0xFF101B4D),
                width: 450,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        child: Icon(
                          Icons.line_weight,
                          color: Colors.white,
                        ),
                        width: 30,
                        height: 20,
                      ),
                    ),
                    Text(
                      "Howday SHREYANSH TIWARI !!",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CommentSliderChoices()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_box_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Refine",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the onPressed event for "Personal"
                        },
                        child: Text(
                          "Personal",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline, // Underline style
                            decorationColor: Colors.white,      // Underline color
                            decorationThickness: 2.0,            // Underline thickness
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the onPressed event for "Business"
                        },
                        child: Text(
                          "Business",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the onPressed event for "Merchant"
                        },
                        child: Text(
                          "Merchant",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Color(0xFF264371),
                width: 450,
                height: 50,
              ),

              //add karo
              Expanded(child: MainScreen())

            ],
          ),
        ],
      ),
    );
  }
}