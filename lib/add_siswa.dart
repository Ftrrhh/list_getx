import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class AddSiswa extends StatelessWidget {
  const AddSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homecontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Siswa"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: homecontroller.setNamaSiswa,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Masukan Nama'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                homecontroller.addSiswa(homecontroller.setNamaSiswa.text);
              },
              child: Text('Submit'),
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                  itemCount: homecontroller.listname.length,
                  itemBuilder: (context, index) {
                // ignore: invalid_use_of_protected_member
                return Text(homecontroller.listname.value[index]);
              })
            )
          ],
        ),
      ),
    );
  }
}