abstract class File {
  void upload(String filePath);
}

abstract class ConvertableFile extends File {
  void convert(String filePath);
}

class EncryptedFile extends File {
  @override
  void upload(String filePath) {
    print("Загружаем зашифрованный файл: $filePath");
  }
}

class PdfConverter extends ConvertableFile {
  @override
  void upload(String filePath) {
    print("Загружаем PDF-файл: $filePath");
  }

  @override
  void convert(String filePath) {
    print("Конвертируем $filePath в PDF");
  }
}

void main() {
  File encryptedFile = EncryptedFile();
  encryptedFile.upload('document.txt');

  ConvertableFile convertableFile = PdfConverter();
  convertableFile.upload('byte_file.txt');
  convertableFile.convert('byte_file.txt');
}
