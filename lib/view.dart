import 'package:flutter/material.dart';
import 'package:myapp/list.dart';
import 'package:myapp/pages/widget/custom_card.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<MovieList>? favouriteMovies = [];

  @override
  void initState() {
    super.initState();

    MovieList cinderella = MovieList(
      "A Cinderella Story",
      "xxxxx",
      "8/10",
      "assets/acinderellastoryy.jpg",
    );
    MovieList musical = MovieList(
      "Highschool Musical",
      "xxxxx",
      "10/10",
      "assets/highschoolmusical.jpg",
    );
    MovieList seraph = MovieList(
      "Seraph of the End",
      "xxxxx",
      "9/10",
      "assets/owarinoseraph.jpg",
    );
    MovieList princess = MovieList(
      "Princess Diaries",
      "xxxxx",
      "9/10",
      "assets/princessdiaries.jpg",
    );
    MovieList zombies = MovieList(
      "Zombies",
      "xxxxx",
      "10/10",
      "assets/zombie1.jpg",
    );

    favouriteMovies?.addAll([cinderella, musical, seraph, princess, zombies]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Watchlist"),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Container(
        color: Color.fromARGB(255, 15, 15, 15),
        child: ListView.builder(
          itemCount: favouriteMovies?.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                myCard("aurora", "releaseDate", "rating", "imagePath"),
                Container(
                  
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Card(
                    color: Color.fromARGB(225, 67, 67, 67),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 80),
                                child: ListTile(
                                  title: Text(
                                    favouriteMovies![index].title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          "Release Date: ${favouriteMovies![index].releaseDate}",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Genre",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Rating: ${favouriteMovies![index].rating}",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Row(
                                        children: List.generate(
                                          5,
                                          (starIndex) => Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 231, 2, 4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text("More"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: FractionalOffset(1.0, 2.0),
                  width: 90,
                  height: 120,
                  child: Image.asset(favouriteMovies![index].imagePath),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
