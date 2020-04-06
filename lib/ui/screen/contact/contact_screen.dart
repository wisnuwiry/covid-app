import 'package:covid19/ui/common/commons.dart';
import 'package:covid19/ui/screen/contact/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: ScrollConfiguration(
        behavior: NoScrollBehavior(),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: _buildTitle()),
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                  child: _buildSearchWidget(), maxHeight: 120, minHeight: 60),
            ),
            _buildListContact(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'KONTAK DARURAT',
        style: Theme.of(context).textTheme.title,
      ),
    ));
  }

  Widget _buildSearchWidget() {
    return Container(
        alignment: AlignmentDirectional.center,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SearchTextField());
  }

  Widget _buildListContact() {
    return SliverList(
        delegate: SliverChildListDelegate([
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
      ContactItem(),
    ]));
  }
}
