import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController setKelas = TextEditingController();
  TextEditingController setNamaSiswa = TextEditingController();
  TextEditingController setMatapelajaran = TextEditingController();
  
  RxInt totalSiswa = RxInt(1);
  RxString namaKelas = RxString("XII RPL 1");
  RxBool isOpen = RxBool(false);
  RxList<String> listname = RxList<String>([]);
  
  void increaseSiswa() {
    totalSiswa++;
    print(totalSiswa);
  }

  void decreaseSiswa() {
    totalSiswa--;
    print(totalSiswa);
  }

  setIsOpen(value){
    isOpen(value);
  }

  changenamaKelas(value){
    namaKelas(value);
  }
  
  void addSiswa(String nama) {
    listname.add(nama);
  }
}