import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:alert_dialog/alert_dialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wisata_cirebon/detail_screen.dart';
import 'package:wisata_cirebon/form.dart';
import 'package:wisata_cirebon/helper/Utility.dart';
import 'package:wisata_cirebon/helper/dbHelper.dart';
import 'package:wisata_cirebon/helper/helperData.dart';
import 'package:wisata_cirebon/model/photo.dart';
import 'package:wisata_cirebon/model/tourism_place.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utility/utility.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List items = [];
  Future<File>? imageFile;
  Image? image;
  HelperData? dbhelper;
  List<Photo>? images;

  Photo? photo;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    images = [];
    items.length;
    dbhelper?.getAllData().then((photo) {
      setState(() {
        items.length;
        photo.forEach((photo) {
          items.add(Photo.fromMap(photo));
        });
      });
    });
  }

  _deleteNote(BuildContext context, Photo photo, int position) async {
    dbhelper!.deleteNote(photo.id).then((photos) {
      setState(() {
        items.removeAt(position);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata Cirebon'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormPage(),
                  ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                // final TourismPlace place = tourismPlaceList[index];
                Uint8List bytes = base64Decode(items[index].photoName);
                print(items.length);
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(
                        photo: items[index],
                      );
                    }));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 1, child: Image.memory(bytes)),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '${items[index].wisata}',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text('${items[index].alamat}'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 50, right: 20),
                          child: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _deleteNote(context, items[index], index);
                              }),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
