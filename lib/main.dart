import 'package:flutter/material.dart';

void main() => runApp(My_App());

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: SafeArea(
          top: false,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Application"),
              elevation: 0.0,
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: "Chats"),
                  Tab(text: "Status"),
                  Tab(text: "Calls"),
                ],
              ),
              actions: [
                Icon(Icons.settings),
                SizedBox(width: 10.0,),
                Icon(Icons.more_vert),
                SizedBox(width: 15.0,)
              ],
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.message),
              onPressed: ()=> print("Hello"),
              splashColor: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}



