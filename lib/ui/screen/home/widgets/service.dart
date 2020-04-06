import 'package:covid19/bloc/bottom_nav/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helper/helpers.dart';
import '../../../common/commons.dart';

class ServiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          ServiceItem(
            icon: NavigationIcon.phone,
            title: 'Kontak',
            onPress: () {
              BlocProvider.of<BottomNavBloc>(context).add(ContactPageEvent());
            },
          ),
          ServiceItem(
            icon: NavigationIcon.heart,
            title: 'Donasi',
          ),
          ServiceItem(
            icon: NavigationIcon.news,
            title: 'Berita',
            onPress: (){
              // Navigator.pushNamed(context,);
            },
          ),
          ServiceItem(
            icon: NavigationIcon.film,
            title: 'Video',
          ),
          ServiceItem(
            icon: NavigationIcon.correct,
            title: 'Tes Online',
          ),
          ServiceItem(
            icon: NavigationIcon.analitics,
            title: 'Statistik',
            onPress: () {
              BlocProvider.of<BottomNavBloc>(context).add(StatisticPageEvent());
            },
          ),
          ServiceItem(
            icon: NavigationIcon.hospital,
            title: 'Rumah Sakit',
          ),
          ServiceItem(
            icon: NavigationIcon.survey,
            title: 'Survei',
          ),
        ],
      ),
    );
  }
}
