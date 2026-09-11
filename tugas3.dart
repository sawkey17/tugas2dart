import 'dart:io';

String cekNilai(double nilai) {
  if (nilai >= 75) {
    return "Lulus";
  } else {
    return "Belum Lulus";
  }
}

void main() {
  List<Map<String, dynamic>> siswa = [];
  String lagi = "y";

  print("=== DATA SISWA ===");

  while (lagi == "y") {
    stdout.write("Nama : ");
    String nama = stdin.readLineSync() ?? "";

    stdout.write("Umur : ");
    int umur = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    stdout.write("Kelas : ");
    String kelas = stdin.readLineSync() ?? "";

    stdout.write("Nilai : ");
    double nilai = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    siswa.add({
      "nama": nama,
      "umur": umur,
      "kelas": kelas,
      "nilai": nilai
    });

    print("Data berhasil ditambahkan.");
    
    stdout.write("Mau tambah data lagi? (y/n) : ");
    lagi = stdin.readLineSync()?.toLowerCase() ?? "n";

    print("");
  }

  print("=== DATA SISWA ===");

  for (int i = 0; i < siswa.length; i++) {
    print("\nSiswa ${i + 1}");
    print("Nama  : ${siswa[i]["nama"]}");
    print("Umur  : ${siswa[i]["umur"]} tahun");
    print("Kelas : ${siswa[i]["kelas"]}");
    print("Nilai : ${siswa[i]["nilai"]}");
    print("Status: ${cekNilai(siswa[i]["nilai"])}");
  }

  print("\nProgram selesai.");
}