abstract class Openable {
  void open(String filePath);
}

abstract class Readable {
  void readText();
}

abstract class Playable {
  void playAudio();
}

class TextFileHandler implements Openable, Readable {
  String content = "Пример контента";

  @override
  void open(String filePath) {
    print("Открываем текстовый файл: $filePath");
  }

  @override
  void readText() {
    print("Читаем текст: $content");
  }
}

class AudioFileHandler implements Openable, Playable {
  @override
  void open(String filePath) {
    print("Открываем аудиофайл: $filePath");
  }

  @override
  void playAudio() {
    print("Воспроизводим аудио...");
  }
}

void main() {
  final textFileHandler = TextFileHandler();
  final audioFileHandler = AudioFileHandler();

  //Все файлы массива могут быть открытыми..
  //List<Openable> openableFiles = [textFileHandler, audioFileHandler];

  textFileHandler.readText();
  audioFileHandler.playAudio();
}
