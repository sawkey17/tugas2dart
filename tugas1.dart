import 'dart:io';

void main() {

print("masukan nama :");
String nama = stdin.readLineSync()!;
print('helo $nama');

print("masukan NIM :");
String nim = stdin.readLineSync()!;
print('NIM anda adalah: $nim');

print("masukan Jurusan :");
String jurusan = stdin.readLineSync()!;
print('Jurusan anda adalah: $jurusan');

print("masukan Semester :");
String semester = stdin.readLineSync()!;
print('Semester anda adalah: $semester');

print("masukan IPK :");
double ipk = double.parse(stdin.readLineSync()!);
print('IPK anda adalah: $ipk');


  if (ipk >=3.75) {
    print("Cumlaude");
  } else if (ipk >= 3.0) {
    print("Baik");
  } else {
    print("tidak lulus");
  }
  }

// Input

// Nama
// NIM
// Jurusan
// Semester
// IPK

// Output

// ======= BIODATA =======

// Nama :
// NIM :
// Jurusan :
// Semester :
// IPK :

// Status :
// Lulus Cumlaude

// Jika

// IPK >= 3.75

// Cetak

// Cumlaude

// Jika

// >=3.0

// Cetak

// Baik