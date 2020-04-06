import 'package:flutter/material.dart';

import '../../../../helper/helpers.dart';

class StatisticLastestWidget extends StatefulWidget {
  @override
  _StatisticLastestWidgetState createState() => _StatisticLastestWidgetState();
}

class _StatisticLastestWidgetState extends State<StatisticLastestWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildTitleStatistic(),
              _buildListData(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleStatistic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'DATA TERKINI DI INDONESIA',
          style: CustomTextStyle.body1(context),
        ),
        SizedBox(height: 4),
        Text('4 April 2020', style: Theme.of(context).textTheme.caption,)
      ],
    );
  }

  Widget _buildListData() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildItemData('1513', 'Terkomfirmasi', Color(WARNING_COLOR)),
          _buildItemData('120', 'Sembuh', Color(SUCCESS_COLOR)),
          _buildItemData('213', 'Meniggal', Color(ERROR_COLOR)),
        ],
      ),
    );
  }

  Widget _buildItemData(String count, String title, Color color) {
    return Column(
      children: <Widget>[
        Text(
          count,
          style: Theme.of(context)
              .textTheme
              .headline
              .copyWith(color: color, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(title, style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
