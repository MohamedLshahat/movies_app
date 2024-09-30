import 'package:flutter/material.dart';
import 'package:movies/common/AddToWatchListWidget.dart';
import 'package:movies/movie/movie_card.dart';

class MovieItem extends StatefulWidget {
  Function futureFunction;
  List listMovie ;

   MovieItem({required this.futureFunction , required this.listMovie});

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.futureFunction(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.listMovie.length,
              itemBuilder: (context, index) {
                final movie = widget.listMovie[index];
                return GestureDetector(
                  onTap: () {

                  },
                  child: MovieCard(
                      movieTitle: movie['title'],
                      movieImagePath:movie['poster_path'],
                      movieRating:movie['vote_average'],
                      releaseDate:movie['release_date'],),
                );
              },
            ),
          );}
        else {
          return  SizedBox(
            height: MediaQuery.of(context).size.height*.2,
            child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.yellow,
                )),
          );
        }
      },
    );
  }
}
