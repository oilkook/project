import 'package:flutter/material.dart';
import 'package:repairman/views/account/Account.dart';
import 'package:repairman/views/chat/Chat.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> pages = [News(),Chat(),Account()];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: items,
        onTap: (index) => onTap(index),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Repair Man'),
      ),
      body: IndexedStack(children: pages,index: currentIndex,)
    );
  }
}
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}
Padding createCard({String name, String room, String dorm, String tel,String date}){
  return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Name : $name '),
                Text('Room : $room '),
                Text('Dorm : $dorm '),
                Text('Tel. : $tel '),
                Text('Datetime : $date '),
            ],),
              ),),
          );
}
class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Center(child: Text('News'),),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
          createCard(name: 'Papavarin',room: '3.213',dorm: '3',tel: '0649297997',date: '17/02/64' ),
        ],
      ),
    );
  }
}
