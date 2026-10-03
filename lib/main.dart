import 'package:flutter/material.dart';

void main() => runApp(UniChatApp());

class UniChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _c = 0;
  final _pages = [
    Center(child: Text("UniChat\nChats", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
    Center(child: Text("Channels", style: TextStyle(fontSize: 24))),
    Center(child: Text("🥷 AI Assistant", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
    Center(child: Text("Study Tools", style: TextStyle(fontSize: 24))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UniChat 🥷"), backgroundColor: Color(0xFF1976D2), foregroundColor: Colors.white),
      body: _pages[_c],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _c,
        onTap: (i) => setState(() => _c = i),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF1976D2),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.campaign), label: "Channels"),
          BottomNavigationBarItem(icon: Text("🥷", style: TextStyle(fontSize: 24)), label: "AI"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "Study"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
