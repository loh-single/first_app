void main() {
  //var meoVang = Meo('Nau', 'Vang');
  var meoXanh = Meo(mauLong: 'Xanh', mauMat: 'Xanh');
  var meoTim = Meo.named('Tim', 'Tim');
  var meoDo = Meo.tuybien('Do', 'Do');

  //print('${meoVang.mauLong} - ${meoVang.mauMat}');
  print('${meoXanh.mauLong} - ${meoXanh.mauMat}');
  print('${meoTim.mauLong} - ${meoTim.mauMat}');
  print('${meoDo.mauLong} - ${meoDo.mauMat}');
}

class Meo {
  //khởi tạo
  //Meo(this.mauLong, this.mauMat);
  Meo({required this.mauLong, required this.mauMat});

  Meo.named(this.mauLong, this.mauMat);

  Meo.tuybien(String a, String b)
      : this.mauMat = a,
        this.mauLong = b;

  //properties
  String mauMat;
  String mauLong;
//methods
  void nhay() {}
  void chay() {}
}
