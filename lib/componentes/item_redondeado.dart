import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(color: Colors.yellow, width: 2.0)),
              child: ClipOval(
                child: Image.network(
                  'https://sociedadtrespuntocero.com/wp-content/uploads/2019/04/avengers_endgame.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/img/Logo_icons.png',
              width: 90.0,
            ),
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
