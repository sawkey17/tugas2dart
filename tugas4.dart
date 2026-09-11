class Orang {
  String nama;
  int umur;
  String alamat;

  Orang(this.nama, this.umur, this.alamat);

  void tampilkanInfo() {
    print("Nama: $nama");
    print("Umur: $umur");
    print("Alamat: $alamat");
  }
}

class Dokter extends Orang {
  String spesialis;

  Dokter(String nama, int umur, String alamat, this.spesialis)
      : super(nama, umur, alamat);

  void periksaPasien(String pasien) {
    print("$nama sedang memeriksa $pasien");
  }

  @override
  void tampilkanInfo() {
    print("Data Dokter");
    super.tampilkanInfo();
    print("Spesialis: $spesialis");
  }
}

class Pasien extends Orang {
  String nomorPasien;
  String keluhan;

  String _status = "Belum diperiksa";

  Pasien(
    String nama,
    int umur,
    String alamat,
    this.nomorPasien,
    this.keluhan,
  ) : super(nama, umur, alamat);

  String get status => _status;

  set status(String status) {
    _status = status;
  }

  void berobat() {
    print("$nama sedang berobat");
    status = "Sudah diperiksa";
  }

  @override
  void tampilkanInfo() {
    print("Data Pasien");
    super.tampilkanInfo();
    print("Nomor Pasien: $nomorPasien");
    print("Keluhan: $keluhan");
    print("Status: $status");
  }
}

void main() {
  Dokter dokter1 = Dokter(
    "Pak Budi",
    40,
    "Jakarta",
    "Penyakit Dalam",
  );

  Dokter dokter2 = Dokter(
    "Bu Siti",
    35,
    "Bekasi",
    "Anak",
  );

  Pasien pasien1 = Pasien(
    "Andi",
    17,
    "Karawang",
    "P001",
    "Demam",
  );

  Pasien pasien2 = Pasien(
    "Rina",
    18,
    "Bekasi",
    "P002",
    "Batuk",
  );

  Pasien pasien3 = Pasien(
    "Doni",
    20,
    "Jakarta",
    "P003",
    "Sakit kepala",
  );

  List<Orang> daftarOrang = [
    dokter1,
    dokter2,
    pasien1,
    pasien2,
    pasien3,
  ];

  for (var orang in daftarOrang) {
    orang.tampilkanInfo();
    print("");
  }

  dokter1.periksaPasien(pasien1.nama);
  dokter2.periksaPasien(pasien2.nama);

  pasien1.berobat();
  pasien2.berobat();

  print("");
  print("Status pasien 1: ${pasien1.status}");
  print("Status pasien 2: ${pasien2.status}");
  print("Status pasien 3: ${pasien3.status}");
}