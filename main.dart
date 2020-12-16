import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Colors,
        Column,
        EdgeInsets,
        Icons,
        Key,
        MainAxisAlignment,
        MaterialApp,
        Padding,
        Scaffold,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        Widget,
        runApp;
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Toggleswitch',
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align the Sequence'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //By default
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            LiteRollingSwitch(
              value: false,
              textOn: '1',
              textOff: '0',
                iconOff: Icons.coronavirus_sharp,
              onChanged: (bool state) {
                print('turned ${(state) ? '1' : '0'}');
              },
            ),
            //Customized
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: LiteRollingSwitch(
                value: true,
                textOn: 'Yes',
                textOff: 'No',
                colorOn: Colors.deepOrange,
                colorOff: Colors.blueGrey,
                iconOn: Icons.lightbulb_outline,
                iconOff: Icons.power_settings_new,
                textSize: 18.0,
                onChanged: (bool state) {
                  print('turned ${(state) ? 'Yes' : 'No'}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}