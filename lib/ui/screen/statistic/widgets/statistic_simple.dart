import 'package:flutter/material.dart';

class StatisticSimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Card(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: _buildBody(),
      )),
    );
  }

  Widget _buildBody(){
    return Column();
  }

  Widget _buildTitle(){
    
  }
}
