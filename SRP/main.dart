class User {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toString() => "name: $name age: $age";
}  

class UserJsonValidator {
  static void checkValidation(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];

    if ((name == null) || (age == null)) {
      throw const FormatException("Missing required fields");
    } else if ((name as String).isEmpty) {
      throw const FormatException("Name field shouldn't be empty");
    }

    final ageValue = age is int ? age.toInt() : null;

    if (ageValue == null) {
      throw const FormatException("Age must be a number");
    } else if (ageValue == 0) {
      throw const FormatException("Age must me greater than zero");
    }
  }
}

class UserJsonConverter {
  static User userFromJson(Map<String, Object> json) {
    UserJsonValidator.checkValidation(json);
    final name = json['name'] as String;
    final age = json['age'] as int;
    return User(name, age);
  }
}

class UserProcessing {
  static void processUserData(User user) {
    user.name = user.name.toUpperCase();
    user.age += 1;
  }
}

class UserRepository {
  static void saveUserData(User user) {
    print("Данные сохранены: $user");
  }
}

class UserManager {
  User getUserFromJson(Map <String, Object> json) => UserJsonConverter.userFromJson(json);
  void processUserData(User user) => UserProcessing.processUserData(user);
  void saveUserData(User user) => UserRepository.saveUserData(user); 
}

class Logger {
  static void log(String text) {
    print("Запись успешно добавлена: $text");
  }
}

void main() { 
  final userManager = UserManager(); 
  final user = userManager.getUserFromJson({
    'name': 'Майкл Джексон',
    'age': 24,
  }); 
  userManager.processUserData(user);
  userManager.saveUserData(user); 
  Logger.log("Данные пользователя успешно обработаны и сохранены");
}
