import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  StarRatingState createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  int _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildStar(1),
        _buildStar(2),
        _buildStar(3),
        _buildStar(4),
        _buildStar(5),
      ],
    );
  }

  Widget _buildStar(int starNumber) {
    // IconData starIcon = starNumber <= _rating ? Icons.star : Icons.star_border;
    Color starColor = starNumber <= _rating ? Colors.yellow : Colors.white;

    return GestureDetector(
      onTap: () {
        setState(() {
          _rating = starNumber;
        });
      },
      child: Icon(
        Icons.star,
        color: starColor,
      ),
    );
  }
}