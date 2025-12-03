abstract class ConvertableFile {
  void convert(String filePath);
}

class DocxConverter extends ConvertableFile {
  void convert(String filePath) {
    print("Конвертация $filePath в DOCX...");
  }
}

class PdfConverter extends ConvertableFile {
  void convert(String filePath) {
    print("Конвертация $filePath в PDF...");
  }
}

class FileConverter {
  void convertFile(ConvertableFile file, String filePath) {
    file.convert(filePath);
  }
}

void main() {
  List<ConvertableFile> convertableFiles = [DocxConverter(), PdfConverter()];

  FileConverter fileConverter = FileConverter();

  for (var file in convertableFiles) {
    fileConverter.convertFile(file, 'document.txt');
  }
}
