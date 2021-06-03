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



// void main () => runApp(TabbedAppBarDemo());

// class TabbedAppBarDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: choices.length,
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text('Tabbed AppBar'),
//             bottom: TabBar(
//               isScrollable: true,
//               tabs: choices.map<Widget>((Choice choice) {
//                 return Tab(
//                   text: choice.title,
//                   icon: Icon(choice.icon),
//                 );
//               }).toList(),
//             ),
//           ),
//           body: TabBarView(
//             children: choices.map((Choice choice) {
//               return Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ChoicePage(
//                   choice: choice,
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
 
// class Choice {
//   final String title;
//   final IconData icon;
//   const Choice({this.title, this.icon});
// }
 
// const List<Choice> choices = <Choice>[
//   Choice(title: 'CAR', icon: Icons.directions_car),
//   Choice(title: 'BICYCLE', icon: Icons.directions_bike),
//   Choice(title: 'BUS', icon: Icons.directions_bus),
//   Choice(title: 'TRAIN', icon: Icons.directions_railway),
//   Choice(title: 'WALK', icon: Icons.directions_walk),
//   Choice(title: 'BOAT', icon: Icons.directions_boat),
// ];
 
// class ChoicePage extends StatelessWidget {
//   const ChoicePage({Key key, this.choice}) : super(key: key);
//   final Choice choice;
 
//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = Theme.of(context).textTheme.display1;
//     return Card(
//       color: Colors.white,
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               choice.icon,
//               size: 150.0,
//               color: textStyle.color,
//             ),
//             Text(
//               choice.title,
//               style: textStyle,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }