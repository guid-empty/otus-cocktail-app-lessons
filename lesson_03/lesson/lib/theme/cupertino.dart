import 'package:flutter/cupertino.dart';

class SampleCupertinoThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Title'),
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CupertinoActivityIndicator(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CupertinoTextField(placeholder: 'CupertinoTextField',),
                ),
                CupertinoSwitch(
                  value: true,
                  onChanged: (value){},
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text('CupertinoButton'),
                )
              ]),
        ));
  }
}

CupertinoThemeData get sampleThemeData => CupertinoThemeData(
  brightness: Brightness.dark

);
