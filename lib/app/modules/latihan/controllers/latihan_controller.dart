import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:learn_getx/app/modules/latihan/views/output.dart';

class LatihanController extends GetxController {
  //TODO: Implement LatihanController

  var nama = ''.obs;
  var placeofbirth = ''.obs;
  var dateofbirth = ''.obs;
  var gender = 'Laki-Laki'.obs;
  var email = ''.obs;
  var nationality = ''.obs;
  var cardnumber = ''.obs;
  var expireddate = ''.obs;
  var payment = ''.obs;
  var totalharga = ''.obs;
  var membership = ''.obs;
  var harga = ''.obs;
  var benefits = ''.obs;

  var isFormSubmitted = false.obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      dateofbirth.value = formattedDate;
    }
  }

  var expired_date = ''.obs;
  Future<void> ExpiredDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
        final experiedDateValue = picked.add(Duration(days: 7));
      final formattedDate = DateFormat('yyyy-MM-dd').format(experiedDateValue);
      expired_date.value = formattedDate;


    }
  }

  RxString calculateAge() {
    if (dateofbirth.value.isNotEmpty) {
      DateTime dob = DateFormat('yyyy-MM-dd').parse(dateofbirth.value);
      DateTime now = DateTime.now();
      int age = now.year - dob.year;
      int monthNow = now.month;
      int monthDob = dob.month;
      if (monthNow < monthDob || (monthNow == monthDob && now.day < dob.day)) {
        age--;
      }
      return age.toString().obs;
    }
    return ''.obs;
  }

  void toggleMembership(String membershipValue) {
    membership.value = membershipValue;
    if (membership == "Reguler") {
      harga.value = "50000";
      benefits.value = "Anggota 1 Bulan";
    } else if (membership == "Gold") {
      harga.value = "150000";
      benefits.value = "Anggota 1 Bulan + cemilan gratis";
    } else if (membership == "Platinum") {
      harga.value = "250000";
      benefits.value = "Anggota 2 Bulan + Free wifi";
    } else if (membership == "VIP") {
      harga.value = "500000";
      benefits.value = "Anggota 3 Bulan + Free wifi + Tiket konser";
    }
  }

  void submitForm() {
    print(
        'Data Formulir: $nama, $placeofbirth, $dateofbirth, $gender, $email, $nationality, $cardnumber, $expireddate, $payment ,${membership.value},  ${harga.value}, ${benefits.value} ');
    isFormSubmitted.value = true;
   
  }
}
