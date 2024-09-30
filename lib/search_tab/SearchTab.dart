import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 24),
        child: Column(children: [
          TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor:Colors.white24,
            contentPadding: EdgeInsets.all(18),
            prefixIcon: Icon(Icons.search,color: Colors.white,size: 30,),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.white38,width: 2,),),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.white38,
              width: 2.0,
            ),),


            ),
          cursorColor: Color(0xFF48CFAD),),
          const Spacer(),
          const Center(child: Column(
            children: [

              Image(image:AssetImage('assets/images/noMovies icon.png')),
              Text('No movies found'),

            ],
          ),),const Spacer(),

        ],),
      ),
    );
  }
}
