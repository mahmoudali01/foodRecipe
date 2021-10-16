import 'package:flutter/material.dart';
import 'theme_class.dart';
import 'circular_image.dart';
class AuthorCard extends StatefulWidget {
     @override
  _AuthorCardState createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
    final String authorName;
  final String title;
  final ImageProvider? imageProvider;
bool _isFavorited = false;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Replace return Container(...);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add alignment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          // 1
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              // 2
              const SizedBox(width: 8),
              // 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          // TODO 2: add IconButton
        IconButton(
  // 1
  icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
  iconSize: 30,
  // 2
  color: Colors.red[400],
  onPressed: () {
    // 3
    setState(() {
      _isFavorited = !_isFavorited;
    });
  },
)

        ],
      ),
    );
  }


