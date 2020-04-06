import 'package:flutter/material.dart';

import '../../../../helper/helpers.dart';

class TestCoronaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Image.asset(virus),
            _buildText(context),
            IconButton(
                icon: Icon(NavigationIcon.navigate_next, 
                size: 16,
                ), onPressed: () {
                  Navigator.pushNamed(context, webScreen, arguments: 'https://prixa.ai/corona');
                })
          ],
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Coronavirus Test',
            style: Theme.of(context).textTheme.subtitle,
          ),
          SizedBox(height: 8),
          Text(
            'Waspada dengan Covid-19 periksa gejala sejak sekarang dengan mudah',
            style: Theme.of(context).textTheme.caption,
          ),
        ]),
      ),
    );
  }
}
