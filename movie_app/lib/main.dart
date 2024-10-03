import 'package:flutter/material.dart';
import 'package:movie_app/movie.dart';

class MovieInfo extends StatelessWidget {
  MovieInfo({super.key});
  final Movie movie = lordOfTheRings;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 205, 176, 14), Colors.black],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MovieTop(movie),
                MovieMiddle(movie),
                MovieButton(movie),
              ],
            )),
      ),
    );
  }
}

class MovieTop extends StatelessWidget {
  final Movie movie;
  MovieTop(this.movie);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color:const Color.fromARGB(255, 210, 201, 201),
      fontSize: 13);

    return Padding(
      padding: const EdgeInsets.only(bottom:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  this.movie.title,
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text("${movie.year}", style: textStyle),
                SizedBox(width: 10,),
                Text(this.movie.rating, style: textStyle),
                SizedBox(width:10,),
                Text("${movie.minutes} min", style: textStyle),
                SizedBox(width: 16,),
                Expanded(
                  child: Text(movie.tags.join(', '), style: textStyle,
                  
                  
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MovieMiddle extends StatelessWidget {
  final Movie movie;
  MovieMiddle(this.movie);
  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(color:Colors.white70,
    width: 1,);
    return Container(
      height: 220,
      decoration: BoxDecoration(
        border: Border(top:borderSide,bottom: borderSide )),
      child: Row(
        children: [
          Image.asset("asset/lotr2.jpg"),
          
          Expanded(
            child: Container(
              width: 235,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(this.movie.plot,
                style: TextStyle(color: Colors.white,
                fontSize:16),
                overflow: TextOverflow.ellipsis,
                maxLines: 11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieButton extends StatelessWidget {
  final Movie movie;
  MovieButton(this.movie);
  @override
  Widget build(BuildContext context) {
    final styleBold = TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:18);
    final styleNormal = TextStyle(color: Colors.white,fontSize:12);
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Container(
                child: Text("Director",style: styleBold),),
                  ), Text("${movie.directors[0]}",style: styleNormal),
          ],
        ),
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(38.0),
              child: Container(
                child: Text("Actors",style: styleBold),),
          ), Container(width: 100,
            child: Text("${movie.actors}",style: styleNormal)),
        ],
      ),
      Row(
        children: [
          Padding(
              padding:  EdgeInsets.all(38.0),
              child: Container(
                child: Text("Writers",style: styleBold),
                ),
          ), Container(width: 100,
            child: Text("${movie.writers}",style: styleNormal)),
        ],
      ),
      ],
    );
  }
}

void main() => runApp(MovieInfo());
