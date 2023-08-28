// extend and implement

import 'dart:ffi';

void main() {
  var conChoVang = Cho(12, 5, 'Vang');
  var conMeoXam = Meo(15, 6, 'Xam');
  var conGaDen = Ga(7, 3, 'Den');
  print(
      'Con cho vang: ${conChoVang.chieuCao} - ${conChoVang.canNang} - ${conChoVang.mauLong}');
  print(
      'Con meo xam: ${conMeoXam.chieuCao} - ${conMeoXam.canNang} - ${conMeoXam.mauLong}');
  print(
      'Con ga den: ${conGaDen.chieuCao} - ${conGaDen.canNang} - ${conGaDen.mauLong}');

  if (conGaDen is DongVat) {
    print('Con ga la dong vat');
  }
  conGaDen.run();
  conChoVang.run();
  conMeoXam.run();
}

class DongVat {
  int chieuCao;
  int canNang;
  String mauLong;

  DongVat(this.chieuCao, this.canNang, this.mauLong);

  void run() {
    print('Dong vat dang chay');
  }
}

class Ga extends DongVat {
  Ga(super.chieuCao, super.canNang, super.mauLong);

  @override
  void run() {
    print('con ga chay 2 chan');
  }
}

class Cho extends DongVat {
  Cho(super.chieuCao, super.canNang, super.mauLong);

  @override
  void run() {
    print('con cho chay 4 chan');
  }
}

class Meo extends DongVat {
  Meo(super.chieuCao, super.canNang, super.mauLong);
  @override
  void run() {
    print('con meo chay 4 chan');
  }
}
