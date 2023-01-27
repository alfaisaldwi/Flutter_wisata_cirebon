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
  TextEditingController cDeskripsi  = TextEditingController();
  TextEditingController cHari = TextEditingController();
  TextEditingController cJam = TextEditingController();
  TextEditingController cHarga = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata Cirebon'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
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
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(),
        ],
      ),
    );
  }
}
