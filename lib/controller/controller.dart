import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IniController extends GetxController {
  // RxString nama = RxString('');
  final nama = ''.obs;
  final kelas = 'KELAS'.obs;

  TextEditingController textcontroller = TextEditingController();
  TextEditingController namaSiswa = TextEditingController();
  TextEditingController namaMapel = TextEditingController();
  TextEditingController jnsMapel = TextEditingController();
  TextEditingController namaKelas = TextEditingController();

  void ChangeName(String Newnama) {
    nama.value = Newnama;
    // Get.snackbar('Nama yang diinput', nama.value, snackPosition: SnackPosition.TOP);
  }

  void ChangeKelas(String newKelas){
    kelas.value = newKelas;
  }

  String nama2 = '';

  void ChangeNama2(String Newnama) {
    nama2 = Newnama;
    update();
  }

  RxBool isOpen = RxBool(true);

  void setIsOpen(bool Open) {
    isOpen(Open);
  }

  RxInt x = 0.obs;

  void increaseX(){
    if(x.value == 35){
      isOpen(false);
      return;
    }
    x.value++;
  }

  void decreaseX(){
    if(x.value - 1 <= 0) return;
    if(x.value <= 35){
      isOpen(true);
    }
    x.value--;
  }

  RxList SiswaName = RxList([]);
  RxMap<String, String> ListMapel = RxMap<String, String>();

  void tambahKeList(String nama){
    SiswaName.add(nama);
  }

  void addSiswa(String nama){
    SiswaName.add(nama);
    namaSiswa.text = '';
  }

  void removeSiswa(int index){
    SiswaName.removeAt(index);
  }

  void addMapel(String namaMapel, String jnsMapel){
    ListMapel[namaMapel] = jnsMapel;
  }
}
