class Validation {
  // FUNGSI nama string bebas ga tergantung kemana mana
  String validateName(String value) { // MENERIMA VALUE DENGAN TYPE STRING
    if (value.isEmpty) { // JIKA VALUE KOSONG
      return 'Nama Lengkap Wajib Di Isi !'; // MAKA PESAN AKAN DITAMPILKAN
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains('@')) { // JIKA VALUE MENGANDUNG KARAKTER @
      return 'Email Tidak Valid'; // MAKA PESAN AKAN DITAMPILKAN
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) { // VALUE TERSEBUT DI CEK APABILA KURANG DARI 4 KARAKTER
      return 'Password Minimal 4 Karakter'; // Maka pesan error akan ditampilkan
    }
    return null;
  }

}