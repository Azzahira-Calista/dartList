import 'package:flutter/material.dart';
import 'package:myapp/list.dart';

class listPage extends StatefulWidget {
  const listPage({super.key});

  @override
  State<listPage> createState() => _listPageState();
}

class _listPageState extends State<listPage> {
  List<MovieList>? favouriteMovie = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    MovieList cinderella = new MovieList(
        "A Cinderella Story", "xxxxx", "8/10", "assets/acinderellastoryy.jpg");
    MovieList musical = new MovieList(
        "Highschool Musical", "xxxxx", "10/10", "assets/highschoolmusical.jpg");
    MovieList seraph = new MovieList(
        "Seraph of the End", "xxxxx", "9/10", "assets/owarinoseraph.jpg");
    MovieList princess = new MovieList(
        "Princess Diaries", "xxxxx", "9/10", "assets/princessdiaries.jpg");
    MovieList zombies =
        new MovieList("Zombies", "xxxxx", "10/10", "assets/zombie1.jpg");

    favouriteMovie?.add(cinderella);
    favouriteMovie?.add(musical);
    favouriteMovie?.add(seraph);
    favouriteMovie?.add(princess);
    favouriteMovie?.add(zombies);
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
          itemCount: favouriteMovie?.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Card(
                    color: Color.fromARGB(225, 67, 67, 67),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 80), // Add left padding
                                child: ListTile(
                                  title: Text(
                                    favouriteMovie![index].title,
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
                                        padding: EdgeInsets.only(
                                            top:
                                                15), // Add top padding for space
                                        child: Text(
                                          "Release Date: ${favouriteMovie![index].releaseDate}",
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
                                        "Rating: ${favouriteMovie![index].rating}",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Row(
                                        ///belum cari tau cara biar langsung 5 icon :>
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            color: Colors.yellow,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 231, 2, 4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // Other children of the Column
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: FractionalOffset(1.0, 2.0),
                  width: 90,
                  height: 120,
                  child: Image.asset(favouriteMovie![index].imagePath),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
