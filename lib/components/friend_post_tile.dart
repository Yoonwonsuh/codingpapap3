import 'package:flutter/material.dart';

import 'circle_image.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleImage(
          imageRadius: 20,
          imageProvider: AssetImage(post.profileImageUrl),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment, style: Theme.of(context).textTheme.bodyText2),
              Text('${post.timestamp} mins ago',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        )
      ],
    );
  }
}
