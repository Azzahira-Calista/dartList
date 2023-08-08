import 'package:flutter/material.dart';
import 'package:myapp/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    // Siswa fadil = new Siswa("Fadil", "fadil@email.com");
    // Siswa viko = new Siswa("Viko", "viko@email.com");
    // Siswa fattah = new Siswa("Fattah", "fattah@email.com");
    // Siswa barata = new Siswa("Barata Wijaya", "barata@email.com");
    // siswa11PPLG2?.add(fadil);
    // siswa11PPLG2?.add(viko);
    // siswa11PPLG2?.add(fattah);
    // siswa11PPLG2?.add(barata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: favouriteMovie?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        favouriteMovie![index].imagePath,
                        width: 50,
                        height: 50,
                      ),
                      Text(favouriteMovie![index].title),
                      Text(favouriteMovie![index].releaseDate),
                      Text(favouriteMovie![index].rating)
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
