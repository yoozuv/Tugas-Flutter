import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/DataBudget.dart';
import 'package:counter_7/utils/drawer.dart';
import 'package:counter_7/page/my_watchlist_page.dart';
import 'package:counter_7/page/my_watchlist_detail.dart';


class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String judul = "";
  int nominal = 0;
  String jenis = "";
  List<String> listJenis = ["Pemasukkan", "Pengeluaran"];
  List<String> data = [];
  bool isNumber(String nominal){
    if( nominal == null){
        return false;
    }
    return double.tryParse(nominal) != null;
  }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Tambah Budget'),
            ),
          //drawer: const MainDrawer(),
            drawer: Drawer(
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
         MaterialPageRoute(builder: (context) => MyDataBudgetPage(data: data)),
        );
       },
      ),
      ListTile(
          title: const Text('My Watch List'),
          onTap: (){
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MyWatchList()),
    );
    },
    ), 
     ],
    ),
   ), 
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Judul Budget",
                      labelText: "Judul",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        judul= value!;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        judul= value!;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul budget tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Menggunakan padding sebesar 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Nominal Budget",
                      labelText: "Nominal",
                      // Menambahkan circular border agar lebih rapi
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Menambahkan behavior saat nama diketik
                    onChanged: (String? value) {
                      setState(() {
                        nominal =isNumber(value!) ? int.parse(value) : 0;
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        nominal = isNumber(value!) ? int.parse(value) : 0;
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty || !(isNumber(value))) {
                        return 'Nominal budget tidak boleh kosong atau string!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width:150,
                    child: Column(
                      children: [
                          DropdownButtonFormField(
                            value:jenis != ""?jenis : null,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: listJenis.map((String item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                               jenis = newValue!;
                              });
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty || value == "") {
                                return 'Pilih Dropdown dulu!';
                              }
                              return null;
                            },
                            hint: Container(//and here
                              child: Text(
                                "Pilih Jenis",
                              ),
                            ),

                          ),
                      ],

                    ),
                  ),
                ),

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                            child: const Text(
                              "Simpan",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      elevation: 15,
                                      child: Container(
                                        child: ListView(
                                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                                          shrinkWrap: true,
                                          children: <Widget>[
                                            Center(child: const Text('Data sudah berhasil dibuat')),
                                            SizedBox(height: 20),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Kembali'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                                var item = "${judul}+${nominal}+${jenis}";
                                data.add(item);
                              }
                            },
                          ),
                    ],
                  ),
                ),
              ],
            ),
          ),
     
    //batas
     
    ),
    // child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //         Text('Hello World!'),
    //     ],
    // ),
            ),
            
        );
    }
}