import 'package:flutter/material.dart';
import 'package:flutter_customscrollview_test2/pages/settings.dart';

import 'individual_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            forceElevated: true,
            floating: true,
            snap: true,
            centerTitle: true,
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("GoFlutter", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    "https://cdn.pixabay.com/photo/2019/06/08/12/42/iceland-4260053_960_720.jpg", fit: BoxFit.cover,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: (){_gotoSettings();},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2.0,
                        child: InkWell(
                          onTap: (){ _openNewPage(); },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2014/12/15/17/16/pier-569314__340.jpg'),
                                    ),
                                    SizedBox(width: 20,),
                                    Text("Item Numero $index"),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ),
                  );
                }
            ),
          )
        ],
      ),
    );
  }

  _openNewPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualPage()));
  }

  _gotoSettings(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
  }
}
