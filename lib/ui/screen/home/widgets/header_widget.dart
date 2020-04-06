import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/theme/theme_bloc.dart';
import '../../../../helper/helpers.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return SliverAppBar(
          pinned: true,
          expandedHeight: 250,
          leading: _buildIconSwitchTheme(state),
          flexibleSpace: FlexibleSpaceBar(
            background: _buildBackgroundHeader(),
          ),
        );
      },
    );
  }

  Widget _buildIconSwitchTheme(ThemeState state) {
    bool isDark;
    if (state is ThemeLightState) {
      isDark = false;
    } else if (state is ThemeDarkState) {
      isDark = true;
    }

    return IconButton(
      icon: Icon(isDark ? Icons.brightness_2 : Icons.brightness_high),
      onPressed: () {
        isDark
            ? BlocProvider.of<ThemeBloc>(context).add(ThemeEvent.light)
            : BlocProvider.of<ThemeBloc>(context).add(ThemeEvent.dark);
      },
    );
  }

  Widget _buildBackgroundHeader() {
    return Container(
      alignment: AlignmentDirectional.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(bg_header),
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          _buildMessage(),
          _buildImageBanner(),
        ],
      ),
    );
  }

  Widget _buildMessage() {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      child: RichText(
        text: TextSpan(
            text: 'Ayo Bersama Lawan\n',
            children: [
              TextSpan(
                text: '*Corona*',
                style: Theme.of(context).textTheme.display1.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
            style: Theme.of(context).textTheme.headline),
      ),
    ));
  }

  Widget _buildImageBanner() {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(top: 50),
      child: Image.asset(
        doctor,
        fit: BoxFit.fitHeight,
      ),
    ));
  }
}
