import "package:flutter/material.dart";

class StarsRating extends StatefulWidget {
  StarsRating({super.key});

  State<StarsRating> createState() => StarsRatingState();
}

class StarsRatingState extends State<StarsRating> {
  int _starRate = 0;
  @override
  Widget build(BuildContext context) {
    return starRow(context, _starRate);
  }

  Widget starRow(BuildContext context, int starNumber) {
    var listStar = <Widget>[];
    for (int i = 0; i < 5; i++) {
      listStar.add(
        InkWell(
          onTap: () {
            setState(
              () {
                _starRate = i + 1;
              },
            );
          },
          child: Icon(
            i < starNumber ? Icons.star_rate_rounded : Icons.star_border,
            color: Colors.redAccent,
            size: 20,
          ),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [...listStar],
    );
  }
}
