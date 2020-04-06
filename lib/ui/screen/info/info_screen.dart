import 'package:covid19/ui/common/commons.dart';
import 'package:covid19/ui/screen/info/widgets/faq_item.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ScrollConfiguration(
      behavior: NoScrollBehavior(),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: _buildTitle(),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverHeaderDelegate(
                child: _buildSearchWidget(), maxHeight: 120, minHeight: 60),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_listFaq()),
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'INFORMASI (FAQ)',
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

  List<Widget> _listFaq() {
    var faq = FaqItem(title: 'This app displays hierarchical data with ExpansionTiles.', body: 'This app displays hierarchical data with ExpansionTiles. Tapping a tile expands or collapses the view of its children. When a tile is collapsed its children are disposed so that the widget footprint of the list only reflects whats visible.When displayed within a scrollable that creates its list items lazily, like a scrollable list created with ListView.builder(), ExpansionTiles can be quite efficient, particularly for Material Design  lists.Try this app out by creating a new project with flutter create and replacing the contents of lib/main.dart with the following code.');
    return [
      faq, faq,faq,faq,faq,faq,faq,faq,faq,faq,
    ];
  }
}
