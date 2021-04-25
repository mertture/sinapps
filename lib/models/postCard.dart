import 'package:sinapps/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:sinapps/utils/colors.dart';
import 'post.dart';

class PostCard extends StatelessWidget {

  final Post post;
  final Function delete;
  PostCard({ this.post, this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8.0, 0.0, 8.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              post.text,
              style: TextStyle(
                fontFamily: 'BrandonText',
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  post.date,
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ),

                SizedBox(width: 8.0),

                Icon(
                  Icons.thumb_up,
                  size: 16.0,
                  color: AppColors.primary,
                ),
                Text(
                  '${post.likes}',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ),

                SizedBox(width: 8.0),

                Icon(
                  Icons.thumb_down,
                  size: 16.0,
                  color: AppColors.third,
                ),

                Text(
                  '${post.dislikes}',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ),

                SizedBox(width: 8.0),

                Icon(
                  Icons.comment,
                  size: 16.0,
                ),

                Text(
                  '${post.comments}',
                  style: TextStyle(
                    fontFamily: 'BrandonText',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                ),



                IconButton(
                  padding: EdgeInsets.fromLTRB(4.0, 0, 0, 0),
                  alignment: Alignment.bottomLeft,
                  splashRadius: 4.0,
                  icon: Icon(
                    Icons.delete,
                    size: 20.0,
                    color: Colors.red,
                  ),
                  onPressed: delete,
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}