// import 'package:flutter/material.dart';
// import 'package:myapp/list.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<MovieList>? favouriteMovie = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     MovieList cinderella = new MovieList(
//         "A Cinderella Story", "xxxxx", "8/10", "assets/acinderellastoryy.jpg");
//     MovieList musical = new MovieList(
//         "Highschool Musical", "xxxxx", "10/10", "assets/highschoolmusical.jpg");
//     MovieList seraph = new MovieList(
//         "Seraph of the End", "xxxxx", "9/10", "assets/owarinoseraph.jpg");
//     MovieList princess = new MovieList(
//         "Princess Diaries", "xxxxx", "9/10", "assets/princessdiaries.jpg");
//     MovieList zombies =
//         new MovieList("Zombies", "xxxxx", "10/10", "assets/zombie1.jpg");

//     favouriteMovie?.add(cinderella);
//     favouriteMovie?.add(musical);
//     favouriteMovie?.add(seraph);
//     favouriteMovie?.add(princess);
//     favouriteMovie?.add(zombies);

//     // Siswa fadil = new Siswa("Fadil", "fadil@email.com");
//     // Siswa viko = new Siswa("Viko", "viko@email.com");
//     // Siswa fattah = new Siswa("Fattah", "fattah@email.com");
//     // Siswa barata = new Siswa("Barata Wijaya", "barata@email.com");
//     // siswa11PPLG2?.add(fadil);
//     // siswa11PPLG2?.add(viko);
//     // siswa11PPLG2?.add(fattah);
//     // siswa11PPLG2?.add(barata);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home Page"),
//       ),
//       body: Container(
//         color: const Color.fromARGB(255, 17, 16, 21),
//         child: Container(
//           child: ListView.builder(
//               padding: const EdgeInsets.all(8),
//               itemCount: favouriteMovie?.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Container(
//                   height: 150,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         favouriteMovie![index].imagePath,
//                         width: 100,
//                         height: 100,
//                       ),
//                       Text(favouriteMovie![index].title),
//                       Text(favouriteMovie![index].releaseDate),
//                       Text(favouriteMovie![index].rating)
//                     ],
//                   ),
//                 );
//               }),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/list.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieList>? favouriteMovie = [];

  @override
  void initState() {
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginPage()), // Navigate to LoginPage
            );
          },
        ),
        title: Text("Movie List App"),
        backgroundColor: const Color.fromARGB(221, 105, 104, 104),
      ),
      body: Container(
        color: const Color.fromARGB(255, 17, 16, 21),
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: favouriteMovie?.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Card(
                color: Colors.white,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                child: ListTile(
                  trailing: Icon(Icons.favorite, color: Colors.red),
                  leading: Image.asset(
                    favouriteMovie![index].imagePath,
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    favouriteMovie![index].title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Release Date: ${favouriteMovie![index].releaseDate}"),
                      Text("Rating: ${favouriteMovie![index].rating}"),
                    ],
                  ),
                  onTap: () {
                    // Add your onTap logic here e.g., navigate to movie details
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
