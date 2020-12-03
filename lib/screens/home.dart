import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List listfood = [];

  @override
  void initState() {
    FirebaseFirestore.instance.collection('food').get().then((value) {
      // print(value.docs[0]['food_name']);

      setState(() {
        listfood = value.docs;
      });
    });

    // insert new data to cloud firestore
    // FirebaseFirestore.instance.collection('food').add({
    //   'food_name': 'minyak goreng',
    //   'ingredient': 'tye',
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: MediaQuery.of(context).padding,
        child: listfood == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: listfood.length,
                itemBuilder: (builder, index) {
                  return Text(listfood[index]['food_name']);
                }));
  }
}
