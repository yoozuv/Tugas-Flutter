import 'package:counter_7/model/my_watchlist_model.dart';

import 'package:flutter/material.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/utils/FetchMyWatchList.dart';
import 'package:counter_7/page/form.dart';

class MyWatchListDetail extends StatelessWidget {
  const MyWatchListDetail({super.key, required this.myWatchList});

  final MyWatchListModel myWatchList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const MainDrawer(),
      /*drawer: Drawer(
        child: Column(
            children: [
        // Menambahkan clickable menu
        ListTile(
        title: const Text('Counter'),
        onTap: () {
          // Route menu ke halaman utama
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
      ),
      ListTile(
        title: const Text('Tambah Budget'),
        onTap: () {
          // Route menu ke halaman form
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MyFormPage()),
          );
        },
      ),
      ListTile(
        title: const Text('Data Budget'),
        onTap: () {
          // Route menu ke halaman form
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MyDataBudgetPage()),
          );
        },
      ),
      ListTile(
          tittle: const Text('My Watch List').
          onTap: (){
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MyWatchList()),
    );
    },
    ),

    ],
    ),
    ),*/

    body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Column(
                children: [
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          myWatchList.fields.title,
                          style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ]),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Release Date: ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                              myWatchList.fields.releaseDate
                                  .toString()
                                  .substring(0, 10),
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Rating: ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(myWatchList.fields.rating.toString(),
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Status: ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text(
                              myWatchList.fields.watched,

                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Review: ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(children: [
                        Flexible(
                          child: Text(myWatchList.fields.review.toString(),
                              style: TextStyle(fontSize: 15)),
                        )
                      ])
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size.fromHeight(50), // NEW
                    ),
                  )
                ],
              ),
            ]),
          )),
    );
  }
}