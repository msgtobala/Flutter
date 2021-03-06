import 'package:flutter/material.dart';

import 'package:demo_app/data/you_may_like_data.dart';
import 'package:demo_app/resources/strings.dart';
import 'package:demo_app/styles/global_styles.dart';
import 'package:demo_app/common/with_padding.dart';
import 'you_may_like_card.dart';

class YouMayLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        WithPadding(
          Text(Strings.youMightAlsoLike,
              style: GlobalStyles.of(context).captionSemiBold),
        ),
        Container(
          height: 216,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 15),
            itemCount: YouMayLikeData.length,
            itemBuilder: (_, i) =>
                YouMayLikeCard(width: 170, data: YouMayLikeData[i]),
          ),
        )
      ],
    );
  }
}
