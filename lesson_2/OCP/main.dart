abstract class File {
  void convert();
}

class PdfFile extends File {
  String _filePath;

  PdfFile(this._filePath);

  @override
  void convert() {
    print("Конвертирует $_filePath в PDF...");
  }
}

class DocxFile extends File {
  String _filePath;

  DocxFile(this._filePath);

  @override
  void convert() {
    print("Конвертируем $_filePath в DOCX...");
  }
}

class JpgFile extends File {
  String _filePath;

  JpgFile(this._filePath);

  @override
  void convert() {
    print("Конвертируем $_filePath в JPG...");
  }
}

class FileConverter {
  void convertFile(File file) {
    file.convert();
  }
}

void main() {
  final fileConverter = FileConverter();
  final pdfFile = PdfFile('document.txt');
  final docxFile = DocxFile('report.txt');
  final jpgFile = JpgFile('byte_image.txt');

  fileConverter.convertFile(pdfFile);
  fileConverter.convertFile(docxFile);
  fileConverter.convertFile(jpgFile);
}
