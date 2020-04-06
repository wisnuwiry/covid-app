import 'package:covid19/ui/common/commons.dart';
import 'package:covid19/ui/screen/news/widgets/news_item.dart';
import 'package:flutter/material.dart';

class NewsLastestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextTitleSection(title: 'Berita Terbaru', moreText: true),
        SizedBox(height: 8),
        _buildListNews(),
        PrimaryButton(
          child: Text('Lihat Selengkapnya'),
          onPress: (){},
        )
      ],
    );
  }

  Widget _buildListNews() {
    return Column(
      children: <Widget>[
        NewsItem(
            title:
                "Selain Corona, Pemerintah Didesak Serius Tangani DBD - iNews",
            description:
                'DBD dinilai mesnjadi ancaman serius bagi masyarakat. Pemerintah didesak juga memberi perhatian terhadap penanganan DBD.',
            image:
                'https://img.inews.id/media/600/files/inews_new/2019/08/23/nyamuk.jpg'),
        NewsItem(
            title:
                "Selain Corona, Pemerintah Didesak Serius Tangani DBD - iNews",
            description:
                'DBD dinilai mesnjadi ancaman serius bagi masyarakat. Pemerintah didesak juga memberi perhatian terhadap penanganan DBD.',
            image:
                'https://img.inews.id/media/600/files/inews_new/2019/08/23/nyamuk.jpg'),
        NewsItem(
            title:
                "Selain Corona, Pemerintah Didesak Serius Tangani DBD - iNews",
            description:
                'DBD dinilai mesnjadi ancaman serius bagi masyarakat. Pemerintah didesak juga memberi perhatian terhadap penanganan DBD.',
            image:
                'https://img.inews.id/media/600/files/inews_new/2019/08/23/nyamuk.jpg'),
        NewsItem(
            title:
                "Selain Corona, Pemerintah Didesak Serius Tangani DBD - iNews",
            description:
                'DBD dinilai mesnjadi ancaman serius bagi masyarakat. Pemerintah didesak juga memberi perhatian terhadap penanganan DBD.',
            image:
                'https://img.inews.id/media/600/files/inews_new/2019/08/23/nyamuk.jpg'),
      ],
    );
  }
}
