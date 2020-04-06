import 'package:covid19/helper/font/navigation_icon.dart';
import 'package:covid19/helper/helpers.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            _buildIcon(),
            _buildInfo(context),
            _buildActionCall(),
          ],
        ),
      )),
    );
  }

  Widget _buildIcon() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(PRIMARY_COLOR).withOpacity(0.2),
      ),
      child: Icon(NavigationIcon.hospital));
  }

  Widget _buildInfo(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'RSUD Dr Zainoel Abidin',
            style: Theme.of(context).textTheme.subtitle,
          ),
          SizedBox(height: 8),
          Text(
            'Banda Aceh',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget _buildActionCall() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.green),
        child: IconButton(icon: Icon(Icons.call), onPressed: () {}));
  }
}
