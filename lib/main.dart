import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.black26,
        ),
        home: new HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }
  @override 
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  // int current_step = 0;
  // List<Step> my_steps = [
  //   new Step(
  //       title: new Text("Step 1"),
  //       content: new Text("Some Content 1"),
  //       isActive: true),
  //   new Step(
  //       title: new Text("Step 2"),
  //       content: new Text("Some Content 3"),
  //       isActive: true),
  //   new Step(
  //       title: new Text("Step 3"),
  //       content: new Text("Some Content 3"),
  //       isActive: true)
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Utils App"),
          backgroundColor: Colors.black26,
        ),
        body: new TabBarView(
          children: <Widget>[
            new NewPage("first"),
            new NewPage("Second"),
          ],
          controller: tabController,
        ),
        bottomNavigationBar: new Material(
          color:Colors.black26,
          child:new TabBar(
            controller:tabController,
            tabs: <Widget>[
            new Tab(
              icon:new Icon(Icons.favorite),

            ),
            new Tab(
              icon:new Icon(Icons.email),

            )

          ],
          ),

        ),
        );
  }
}
class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new Center(child: new Text(title)));
  }
}

// class MyBody extends StatelessWidget {
//   AlertDialog dialog = new AlertDialog(
//     content:new Text(
//       "Dialog is up"
//       ,style:new TextStyle(
//         fontSize: 30
//         ),

//         ),
//         title:new Text(
//           "Lol",
//           style:new TextStyle(
//             fontSize:40
//           )
//         )
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Center(
//       child: new RaisedButton(
//           child:
//               new Text("click Me", style: new TextStyle(color: Colors.white)),
//           color: Colors.black26,

//           ///code for snackbar ////////////////
//           // onPressed:()=>Scaffold.of(context).showSnackBar(
//           //   new SnackBar(
//           //     content:new Text("I am pressed"),
//           //     duration:new Duration(seconds:2)
//           //   )
//           // )
//           ///////////////////////////////////// .

//           onPressed: () => showDialog(context: context, child: dialog)),
//     ));
//   }
// }
