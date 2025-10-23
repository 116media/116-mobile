import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

import '../../../../shared/themes/extensions/build.context.extension.dart';

/// Home screen displaying the main content feed.
///
/// Renders a scrollable list of content cards with theme integration.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> articles = const [
    {
      'title': 'The Rise of Dominican Hip-Hop',
      'content':
          'Exploring the evolution of hip-hop culture in the Dominican Republic and its impact on youth culture across the island.',
    },
    {
      'title': '116 Clique: A Cultural Movement',
      'content':
          'How the 116 movement has shaped modern Dominican music and created a new wave of artists pushing boundaries.',
    },
    {
      'title': 'Street Culture and Fashion',
      'content':
          'The intersection of street fashion, music, and urban culture in Santo Domingo\'s most vibrant neighborhoods.',
    },
    {
      'title': 'Breaking Down Barriers',
      'content':
          'Young Dominican artists are using hip-hop as a tool for social change and community empowerment.',
    },
    {
      'title': 'The Sound of the Streets',
      'content':
          'From dembow to trap, the unique sonic landscape that defines Dominican urban music today.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.sizing.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: articles.map((article) {
          return Card(
            elevation: 1,
            margin: EdgeInsets.only(bottom: context.sizing.s16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(context.sizing.s8)),
            child: Padding(
              padding: EdgeInsets.all(context.sizing.s24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article['title']!,
                    style: TextStyle(fontSize: context.sizing.s20, fontWeight: FontWeight.bold),
                  ),
                  Gap(context.sizing.s16),
                  Text(
                    article['content']!,
                    style: TextStyle(fontSize: context.sizing.s16, height: context.sizing.s1_5),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
