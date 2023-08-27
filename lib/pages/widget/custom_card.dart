import 'package:flutter/material.dart';

Widget myCard(
    String title, String releaseDate, String rating, String imagePath) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Card(
      color: Color.fromARGB(255, 67, 67, 67),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: ListTile(
                    title: Text("title : " + title),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text("releaseDate : " + releaseDate),
                          ),
                          Text("rating : " + rating),
                          Row(
                            children: List.generate(
                              5,
                              (starIndex) => Icon(
                                Icons.star_outlined,
                                color: Colors.yellow,
                              ),
                            ),
                          )
                        ]),
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
          )
        ],
      ),
    ),
  );
}
