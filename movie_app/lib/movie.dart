

class Movie {
  String title, rating, plot, posterAsset;
  int year, minutes;
  List<String> tags, directors, writers, actors;

  Movie(
      {required this.title,
      required this.rating,
      required this.plot,
      required this.posterAsset,
      required this.year,
      required this.minutes,
      required this.tags,
      required this.directors,
      required this.writers,
      required this.actors});
}

final lordOfTheRings = Movie(
    title: "The Lord of the Rings: The Fellowship of the ring",
    rating: "PG - 13",
    plot:
        "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
    posterAsset: "asset/lotr2.jpg",
    year: 2001,
    minutes: 178,
    tags: [
      'Adventure',
      'Fantasy',
      'Action'
    ],
    directors: [
      'Peter Jackson'
    ],
    writers: [
      'J.R.R Tolkie (novel)',
      'Fran Walsh(Screenplay)',
      'Philippa Boyens',
      'Peter Jackson'
    ],
    actors: [
      'Elija Wood',
      'Ican MacKellen',
      'Sean Astin',
      'Liv Tyler'
    ]);
