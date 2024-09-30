import 'package:flutter/material.dart';
import 'package:movies/browse_tab/BrowseCard.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(vertical: 64,horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Browse Category',style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 12,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [BrowseCard()],),
                Column(children: [BrowseCard()],),
            ],),
          ],
        ),
    ));
  }
}
