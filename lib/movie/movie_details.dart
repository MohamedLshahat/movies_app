import 'package:flutter/material.dart';
import 'package:movies/movie/movie_card.dart';

class MovieDetails extends StatelessWidget {
  static const String routeName ='movie_details';

  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(

        centerTitle: true,
        title: Text('Movie name',style:Theme.of(context).textTheme.titleLarge,maxLines: 2,textAlign: TextAlign.center,),
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/movie_poster.png'),fit: BoxFit.cover)),
          child: ImageIcon(AssetImage('assets/images/play-button.png'),color: Colors.white,),),


        Container(
          padding:EdgeInsets.symmetric(vertical: 12,horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Movie name',style:Theme.of(context).textTheme.titleLarge,),
              Text('2019  PG-13  2h 7m',style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(height: 16,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  height:175,
                  width: 125,
                  decoration: const BoxDecoration(
                      image:DecorationImage(image: AssetImage('assets/images/movie_image.png'),fit: BoxFit.cover)),),
                SizedBox(width: 8,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                    width: 200,
                      child: Text('movie story kencjnnclkdbvisfhvljsdnvhksfv dljnsvbdnvjb sdknkvn sdjnsv',
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.visible,textAlign:TextAlign.left,)),
                  SizedBox(height: 24,),

                   Row(

                    children: [
                    ImageIcon(AssetImage('assets/images/star icon.png'),color: Colors.amber,),
                    SizedBox(width: 8,),
                    Text('rating',style:Theme.of(context).textTheme.titleMedium,),
                  ],),
                  ],)
              ],),
            ],
          ),
        ),

        Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 14),
            decoration: BoxDecoration(color: Colors.white12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('More Like This',style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(height: 16,),
                Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (__,_){return MovieCard(movieTitle: 'Movie',movieImagePath: '',);},
                      separatorBuilder: (__,_){return const SizedBox(height: 200,width: 20,);},
                      itemCount: 5),
                )
              ],),),


      ],),

    );
  }
}
