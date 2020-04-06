import 'package:flutter/material.dart';

class TextTitleSection extends StatelessWidget {
  final String title;
  final bool moreText;

  const TextTitleSection({Key key, this.title, this.moreText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle,
        ),
        Spacer(),
        moreText
            ? Text(
                'Selengkapnya',
                style: Theme.of(context).textTheme.caption,
              )
            : Container(),
      ]),
    );
  }
}
