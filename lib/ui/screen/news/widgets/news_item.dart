import 'package:covid19/helper/helpers.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatefulWidget {
  final String title, description, image;

  const NewsItem({Key key, this.title, this.description, this.image})
      : super(key: key);

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildText(),
                  SizedBox(width: 8),
                  _buildImage(),
                ],
              ),
              _buildSourceNews(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.body2,
          ),
          SizedBox(height: 8),
          Text(
            widget.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.body1(context),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          widget.image,
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.width * 0.3,
          fit: BoxFit.cover,
        ));
  }

  Widget _buildSourceNews() {
    return Row(
      children: <Widget>[
        Text(
          'Detik.com • 27 Jam yang lalu',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
