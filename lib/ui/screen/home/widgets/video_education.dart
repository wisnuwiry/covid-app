import 'package:covid19/helper/helpers.dart';
import 'package:flutter/material.dart';

import '../../../common/commons.dart';

class VideoEduWidget extends StatelessWidget {
  final BuildContext context;

  const VideoEduWidget({Key key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextTitleSection(title: 'Video Edukasi', moreText: true),
        _buildListVideo(),
      ]),
    );
  }

  Widget _buildListVideo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: <Widget>[
          _buildItem(
              'Apa itu Coronavirus? dan apa yang ?',
              'https://awsimages.detik.net.id/community/media/visual/2020/03/14/3ac99244-c36e-44de-b9ce-986d76d7c887.jpeg?w=700&q=90'),
          _buildItem(
              'Apa itu Coronavirus? dan apa yang ?',
              'https://awsimages.detik.net.id/community/media/visual/2020/03/14/3ac99244-c36e-44de-b9ce-986d76d7c887.jpeg?w=700&q=90'),
          _buildItem(
              'Apa itu Coronavirus? dan apa yang ?',
              'https://awsimages.detik.net.id/community/media/visual/2020/03/14/3ac99244-c36e-44de-b9ce-986d76d7c887.jpeg?w=700&q=90'),
        ],
      ),
    );
  }

  Widget _buildItem(String title, String image) {
    return Container(
      width: 260,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image,
                  height: 150,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    title,
                    style: CustomTextStyle.body1(context),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
