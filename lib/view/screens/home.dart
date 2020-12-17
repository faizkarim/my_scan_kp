import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var upperSubject;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    fetchUpperSubject();

    // insert new data to cloud firestore
    // FirebaseFirestore.instance.collection('food').add({
    //   'food_name': 'minyak goreng',
    //   'ingredient': 'tye',
    // });
    super.initState();
  }

  fetchUpperSubject() async {
    var snapshot = await firestore.collection('upper_subject').get();

    // value.docs.forEach((element) {
    //   print({element[0]});
    // })

    // setState(() {
    //   upperSubject = value.docs;
    // })

    snapshot.docs.forEach((doc) => {
          print(doc.data()),
          // setState(() {
          //   upperSubject = doc.data();
          // })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: MediaQuery.of(context).padding,
          child: upperSubject == null
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: upperSubject.length,
                  itemBuilder: (builder, index) {
                    return Text(upperSubject[index].subject_name);
                  })),
    );
  }
}
