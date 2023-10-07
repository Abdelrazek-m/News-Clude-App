
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News',
          style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          'Clude',
          style:
              TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


