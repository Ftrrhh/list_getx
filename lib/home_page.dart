import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_siswa.dart';
import 'controller/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homecontroller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        title: Center(
          child: Text("Nilai Awal Getx"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Get.bottomSheet(
                Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("Edit Kelas"),
                        ),
                        ListTile(
                          onTap: () {
                            homecontroller.totalSiswa != 37
                                ? Get.to(AddSiswa())
                                : null;
                          },
                          title: Text(
                            "Tambah Siswa",
                            style: TextStyle(
                                color: homecontroller.totalSiswa == 37
                                    ? Colors.black
                                    : Colors.yellow),
                          ),
                        ),
                        ListTile(
                          title: Text("Tambah Mata Pelajaran"),
                        )
                      ],
                    )),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(),
            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                child: Center(
                    child: Obx(() => Text(
                          homecontroller.namaKelas.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )))),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade200,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Jumlah Siswa ="),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                homecontroller.totalSiswa != 1
                                    ? homecontroller.decreaseSiswa()
                                    : null;
                              },
                              icon: Icon(Icons.remove)),
                        ],
                      ),
                      Obx(() => Text(homecontroller.totalSiswa.toString())),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                homecontroller.totalSiswa != 37
                                    ? homecontroller.increaseSiswa()
                                    : null;
                              },
                              icon: Icon(Icons.add))
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Closed"),
                      Expanded(
                        child: Container(),
                        flex: 1,
                      ),
                      Obx(() => Switch(
                          value: homecontroller.isOpen.value,
                          activeColor: Colors.lightBlue,
                          onChanged: (value) =>
                              {homecontroller.setIsOpen(value)})),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                child: Center(
                  child: Text(
                    'Nama Siswa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue.shade200,
              ),
            )),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                child: Center(
                  child: Text(
                    'Tambah Mata Pelajaran',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade200,
                ),
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
