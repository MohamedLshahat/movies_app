import 'package:flutter/material.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 180,
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/action_movies.png'),fit: BoxFit.cover)),
    );
  }
}
