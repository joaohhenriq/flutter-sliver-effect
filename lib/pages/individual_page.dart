import 'package:flutter/material.dart';

class IndividualPage extends StatefulWidget {
  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleImage(url: "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Coró",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Age: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text("25", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Company: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text("Memora", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Skills: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text("Flutter Programmer", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Hobbies: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text("Eat and Eat", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  String url;

  CircleImage({this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(shape: BoxShape.circle, image: new DecorationImage(fit: BoxFit.fill, image: new NetworkImage(url))));
  }
}
