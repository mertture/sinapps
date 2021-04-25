import 'package:flutter/material.dart';
import 'package:sinapps/models/searchResult.dart';
import 'package:sinapps/utils/colors.dart';

class SearchResultCard extends StatelessWidget {

  final SearchResult sr;
  SearchResultCard({this.sr});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      margin: EdgeInsets.fromLTRB(7, 6, 7, 6),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: <Widget> [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                color: AppColors.textColor1,
                child: Image.asset(""),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sr.identifier,
                          style: TextStyle(
                            color: AppColors.textColor1,
                            fontSize: 16,
                            fontFamily: 'BrandonText',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          sr.description,
                          style: TextStyle(
                            color: AppColors.textColor1,
                            fontSize: 13,
                            fontFamily: 'BrandonText',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}