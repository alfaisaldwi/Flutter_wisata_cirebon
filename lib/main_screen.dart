import 'package:flutter/material.dart';
import 'package:wisata_cirebon/detail_screen.dart';
import 'package:wisata_cirebon/model/tourism_place.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController cWisata = TextEditingController();
  TextEditingController cAlamat = TextEditingController();
  TextEditingController cDeskripsi = TextEditingController();
  TextEditingController cHari = TextEditingController();
  TextEditingController cJam = TextEditingController();
  TextEditingController cHarga = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata Cirebon'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: tourismPlaceList.length,
              itemBuilder: (context, index) {
                final TourismPlace place = tourismPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place);
                    }));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  place.name,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(place.location),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Form Tambah Wisata',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.all(6),
              child: TextField(
                controller: cWisata,
                decoration: InputDecoration(
                    hintText: 'Wisata',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: cAlamat,
                decoration: const InputDecoration(
                    hintText: 'Alamat',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: cDeskripsi,
                decoration: const InputDecoration(
                    hintText: 'Deskripsi',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: cHari,
                decoration: const InputDecoration(
                    hintText: 'Hari Buka',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: cJam,
                decoration: const InputDecoration(
                    hintText: 'Jam Kerja',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: TextField(
                controller: cHarga,
                decoration: const InputDecoration(
                    hintText: 'Harga Masuk',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(2)))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(6),
                    backgroundColor: Colors.blueAccent),
                child: Text('Tambah Data'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
