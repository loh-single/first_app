import 'dart:io';

void main() {
  var phanSo = PhanSo.empty();
  phanSo.nhap();
  phanSo.xuat();
  // print('tong cua tu so va mau so la: ${phanSo.tong()}');

  //tich cuar 2 phan so
  var phanSo1 = PhanSo(5, 2);
  var phanSo2 = PhanSo(2, 3);
  //phanSo.tich(phanSo1, phanSo2);
  var soBatKy = int.parse(stdin.readLineSync() ?? '');

  print('Tong tu so voi so bat ky : ${phanSo.tongSoBatKy(soBatKy)}');
}

class PhanSo {
  int? tuso;
  int? mauso;
// Contructor
  PhanSo(this.tuso, this.mauso);
  PhanSo.empty();

  void nhap() {
    print('Nhap vao tu so: ');
    this.tuso = int.parse(stdin.readLineSync() ?? '');
    print('Nhap vao mau so: ');
    this.mauso = int.parse(stdin.readLineSync() ?? '');
  }

  void xuat() {
    print('tu so la: ${this.tuso}');
    print('mau so la: ${this.mauso}');
  }

  int tong() {
    return (this.tuso ?? 0) + (this.mauso ?? 0);
  }

  void tich(PhanSo phanSo1, PhanSo phanSo2) {
    var tusoTich = (phanSo1.tuso ?? 0) * (phanSo2.tuso ?? 0);
    var mausoTich = (phanSo1.mauso ?? 0) * (phanSo2.mauso ?? 0);
    print('Ket qua cua tich phan so: $tusoTich / $mausoTich');
  }

  int tongSoBatKy(int soBatKy) {
    return (this.tuso ?? 0) + soBatKy;
  }
}
