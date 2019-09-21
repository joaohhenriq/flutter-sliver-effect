import 'package:flutter/material.dart';

import '../themes.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Homepage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.LIGHT);
                },
                child: Text("Light"),
              ),
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.DARK);
                },
                child: Text("Dark"),
              ),
              RaisedButton(
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.DARKER);
                },
                child: Text("Darker"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}