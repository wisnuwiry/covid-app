import 'package:covid19/ui/common/commons.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Container(
          color: Theme.of(context).appBarTheme.color,
          child: ScrollConfiguration(
            behavior: NoScrollBehavior(),
            child: CustomScrollView(
              slivers: <Widget>[
                HeaderWidget(),
                SliverToBoxAdapter(
                  child: _buildBody(),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      width: double.infinity,
      child: Column(children: [
        TestCoronaButton(),
        SizedBox(height: 16),
        ServiceWidget(),
        StatisticLastestWidget(),
        VideoEduWidget(context: context,),
        NewsLastestWidget(),
      ]),
    );
  }
}
