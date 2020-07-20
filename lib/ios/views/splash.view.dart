import 'package:contacts/ios/styles.dart';
import 'package:flutter/cupertino.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            Icon(
              CupertinoIcons.padlock,
              size: 60,
              color: accentColor,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "My Contacts",
              style: TextStyle(
                fontSize: 20,
                color: accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
