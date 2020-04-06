import 'package:flutter/material.dart';

import '../../../helper/helpers.dart';

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPress;

  const ServiceItem({Key key, this.icon, this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 90,
        child: Card(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(bg_service_item))),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Icon(
                      icon,
                      size: 24,
                      color: Color(PRIMARY_COLOR),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(title, style: Theme.of(context).textTheme.caption)
              ]),
        )),
      ),
    );
  }
}
