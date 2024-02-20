import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/latihan_controller.dart';

class OutPut extends StatelessWidget {
  final LatihanController latihan = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(16),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('FullName : ${latihan.nama.value}'),
                    ),
                    ListTile(
                      title: Text(
                          'Place Of Birth : ${latihan.placeofbirth.value}'),
                    ),
                    ListTile(
                      title: Text('Date Of Birth : ${latihan.calculateAge()}'),
                    ),
                    ListTile(
                      title: Text('Gander : ${latihan.gender.value}'),
                    ),
                    ListTile(
                      title: Text('Email : ${latihan.email.value} '),
                    ),
                    ListTile(
                      title:
                          Text('Nationality : ${latihan.nationality.value} '),
                    ),
                    ListTile(
                      title: Text('MemberShip : ${latihan.membership.value} '),
                    ),
                    ListTile(
                      title: Text('Card Number : ${latihan.cardnumber.value} '),
                    ),
                    ListTile(
                      title:
                          Text('Expired Date : ${latihan.expired_date.value} '),
                    ),
                    ListTile(
                      title: Text('Payment : ${latihan.harga.value} '),
                    ),
                    ListTile(
                      title: Text('Benefits : ${latihan.benefits.value} '),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
