import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/app/modules/latihan/views/output.dart';
import '../controllers/latihan_controller.dart';

class LatihanView extends StatelessWidget {
  LatihanView({Key? key}) : super(key: key);

  final LatihanController latihanController = Get.put(LatihanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LatihanView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Nama'),
                    onChanged: (value) => latihanController.nama.value = value,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Place Of Birth'),
              onChanged: (value) =>
                  latihanController.placeofbirth.value = value,
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () => latihanController.selectDate(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  hintText: 'Pilih Tanggal',
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date Of Birth:'),
                    Obx(() => Text(latihanController.dateofbirth.value)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text("Gender"),
            Row(
              children: [
                Obx(() => Radio(
                      value: 'Laki-laki',
                      groupValue: latihanController.gender.value,
                      onChanged: (value) =>
                          latihanController.gender.value = value!,
                    )),
                Text('Laki-laki'),
                Obx(() => Radio(
                      value: 'Perempuan',
                      groupValue: latihanController.gender.value,
                      onChanged: (value) =>
                          latihanController.gender.value = value!,
                    )),
                Text('Perempuan'),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => latihanController.email.value = value,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nationality'),
              onChanged: (value) => latihanController.nationality.value = value,
            ),
            Container(
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.all(6),
              child: Text(
                "Membership",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Obx(() => Radio(
                          value: 'Reguler',
                          groupValue: latihanController.membership.value,
                          onChanged: (value) =>
                              latihanController.toggleMembership(value!),
                        )),
                    Text("Reguler"),
                    Obx(() => Radio(
                          value: 'Gold',
                          groupValue: latihanController.membership.value,
                          onChanged: (value) =>
                              latihanController.toggleMembership(value!),
                        )),
                    Text("Gold"),
                    Obx(() => Radio(
                          value: 'Platinum',
                          groupValue: latihanController.membership.value,
                          onChanged: (value) =>
                              latihanController.toggleMembership(value!),
                        )),
                    Text("Platinum"),
                    Obx(() => Radio(
                          value: 'VIP',
                          groupValue: latihanController.membership.value,
                          onChanged: (value) =>
                              latihanController.toggleMembership(value!),
                        )),
                    Text("VIP"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Card Number'),
              onChanged: (value) => latihanController.cardnumber.value = value,
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () => latihanController.ExpiredDate(context),
              child: InputDecorator(
                decoration: InputDecoration(
                  hintText: 'Pilih Tanggal',
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Expired Date:'),
                    Obx(() => Text(latihanController.expired_date.value)),
                  ],
                ),
              ),
            ),

            // SizedBox(height: 16.0),
            // TextFormField(
            //   decoration: InputDecoration(labelText: 'Payment'),
            //   onChanged: (value) => latihanController.payment.value = value,
            // ),

            SizedBox(height: 16.0),
            Obx(() => Text("Harga Member : ${latihanController.harga}")),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => Get.to(OutPut()),
              child: Text('Submit'),
            ),

            SizedBox(height: 16.0),
            Obx(() {
              if (latihanController.isFormSubmitted.value) {
                return Text(
                  'Output: ${latihanController.nama}, ${latihanController.placeofbirth}, ${latihanController.calculateAge()}, ${latihanController.gender}, ${latihanController.email}, ${latihanController.nationality}, ${latihanController.membership},${latihanController.cardnumber}, ${latihanController.expireddate}, ${latihanController.payment}, ${latihanController.harga}, ${latihanController.benefits}',
                  style: TextStyle(fontSize: 16.0),
                );
              } else {
                return SizedBox.shrink();
              }
            }),
          ],
        ),
      ),
    );
  }
}
