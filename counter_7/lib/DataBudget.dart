import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';

class MyDataBudgetPage extends StatefulWidget {
  const MyDataBudgetPage({super.key, this.data});

  final List<String>? data;

  @override
  State<MyDataBudgetPage> createState() => _MyDataBudgetPageState();
}

class _MyDataBudgetPageState extends State<MyDataBudgetPage> {

  @override
  Widget build(BuildContext context) {
    List<String> title = [];
    List<String> pilihan = [];
    List<String> nominal = [];
    if(widget.data != null) {
      for (var i = 0; i < widget.data!.length; i++) {
        final string = widget.data![i].split("+");
        title.add(string[0]);
        nominal.add(string[1]);
        pilihan.add(string[2]);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
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
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            if(widget.data != null)...[

              for(var i = 0 ; i < widget.data!.length ; i++)...[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Column(
                    children: <Widget>[
                      new Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget> [
                              Text(title[i], style: TextStyle(fontSize: 24),)
                            ],
                          ),
                        )
                      ),
                      new Container(
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(nominal[i]),
                              Text(pilihan[i]),
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                )
              ]
            ]
          ],
        ),
      ),
    );
  }
}