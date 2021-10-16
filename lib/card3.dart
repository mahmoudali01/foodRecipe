import 'package:flutter/material.dart';
import 'theme_class.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),

          image: DecorationImage(
            image: AssetImage('assets/images/capture2.png'),
            fit: BoxFit.cover,
          ),
          //  color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO 5: add dark overlay BoxDecoration
            // TODO 6: Add Container, Column, Icon and Text
            Container(
              // 3
              padding: const EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  const SizedBox(height: 8),
                  // 8
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  // 9
                  const SizedBox(height: 30),
                ],
              ),
            ),

            // TODO 7: Add Center widget with Chip widget children
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                // 14
                children: [
                  Chip(
                    label: Text('Healthy', style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Vegan', style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Carrots', style: FooderlichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}