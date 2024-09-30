import 'dart:core';
import 'package:flutter/material.dart';
import 'package:movies/movie/movie_details.dart';

import '../common/AddToWatchListWidget.dart';

class MovieCard extends StatefulWidget {
  dynamic movieTitle;
  dynamic movieRating;
  dynamic releaseDate;
  dynamic movieImagePath;
   MovieCard({required this.movieTitle, required this.movieImagePath,this.movieRating='0',this.releaseDate='Soon',super.key});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool isClicked =false;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      splashColor: Colors.transparent,
      highlightColor:Colors.transparent ,
      onTap: (){
        Navigator.pushNamed(context, MovieDetails.routeName);
      },
      child: Column(
          children:[ Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: NetworkImage('https://image.tmdb.org/t/p/w500${widget.movieImagePath}'),
                  fit: BoxFit.cover,),
              ),
              alignment: Alignment.topLeft,
              child:InkWell(
                  onTap:() {
                    setState(() {
                      isClicked=!isClicked;
                    });

                  },
                  child:(isClicked)
                      ? AddToWatchListWidget(markColor: Colors.amberAccent,icon: Icons.check,)
                      : AddToWatchListWidget()) ,
            ),
          ),
            const SizedBox(height: 7,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.star,size: 19,color: Colors.yellow,),
                const SizedBox(width: 5,),
                Text(
                  '${widget.movieRating}',
                  style: const TextStyle(fontSize: 18, color: Colors.grey), ),
                const SizedBox(width: 15,),
                Text(
                  '${widget.releaseDate}',
                  style: const TextStyle(fontSize: 13, color: Colors.grey), ),
              ],),
            Text(
              '${widget.movieTitle}',
              style: const TextStyle(fontSize: 18, color: Colors.white70),overflow: TextOverflow.visible, ),

          ]),
    );
  }
}
