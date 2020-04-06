import 'package:flutter/material.dart';

class FaqItem extends StatelessWidget {
  final String title;
  final String body;

  const FaqItem({Key key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Card(
        child: ExpansionTile(
          title: Text(title),
          backgroundColor: Theme.of(context).cardColor,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(body),
            ),
          ],
        ),
      ),
    );
  }
}
