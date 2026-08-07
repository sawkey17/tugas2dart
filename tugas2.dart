class Kendaraan {
  String _merk = "";
  String _warna = "";
  int _tahun = 0;

  String get merk => _merk;
  String get warna => _warna;
  int get tahun => _tahun;

  set merk(String m) {
    _merk = m;
  }

  set warna(String w) {
    _warna = w;
  }

  set tahun(int t) {
    _tahun = t;
  }

  void tampilkanInfo() {
    print("Merk : $_merk");
    print("Warna : $_warna");
    print("Tahun : $_tahun");
  }
}

class Mobil extends Kendaraan {
  int _jumlahPintu = 0;

  int get jumlahPintu => _jumlahPintu;

  set jumlahPintu(int p) {
    _jumlahPintu = p;
  }

  void bukaBagasi() {
    print("Bagasi dibuka");
  }
}

class Motor extends Kendaraan {
  String _tipeMotor = "";

  String get tipeMotor => _tipeMotor;

  set tipeMotor(String tipe) {
    _tipeMotor = tipe;
  }

  void standar() {
    print("Standar diturunkan");
  }
}

void main() {
  Mobil mbl = Mobil();
  mbl.merk = "Toyota";
  mbl.warna = "Putih";
  mbl.tahun = 2022;
  mbl.jumlahPintu = 4;

  Motor mtr = Motor();
  mtr.merk = "Honda";
  mtr.warna = "Hitam";
  mtr.tahun = 2023;
  mtr.tipeMotor = "Matic";

  print("-- mobil --");
  print(mbl.merk);
  print(mbl.warna);
  print(mbl.tahun);
  print(mbl.jumlahPintu);
  mbl.bukaBagasi();

  print("");

  print("-- motor --");
  print(mtr.merk);
  print(mtr.warna);
  print(mtr.tahun);
  print(mtr.tipeMotor);
  mtr.standar();
}