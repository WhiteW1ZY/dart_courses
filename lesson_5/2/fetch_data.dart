
Future<String> fetchData() => Future.delayed(Duration(seconds: 2), () => "Полученный json-объект...");
Future<void> main() async {
  print("some work..");
  final fetchdata = fetchData().then((data) => print(data)); 
  print("some work..");
  print("awaiting result..."); 
  await fetchdata;
  print("work is done");
}