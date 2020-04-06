import 'package:covid19/ui/common/commons.dart';
import 'package:flutter/material.dart';

import '../home/widgets/widgets.dart';
import 'widgets/widgets.dart';

class StatisticScreen extends StatefulWidget {
  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollConfiguration(
        behavior: NoScrollBehavior(),
              child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              _buildTitle(),
              _buildBody(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'STATISTIK',
        style: Theme.of(context).textTheme.title,
      ),
    ));
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        StatisticLastestWidget(),
        StatisticChart(),
        StatisticTable(),
      ],
    );
  }
}
