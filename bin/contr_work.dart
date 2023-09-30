import 'package:contr_work/contr_work.dart' as contr_work;
import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  var ar = 0.0;
  int count = 0;
  String url = 'https://dummyjson.com/products';
  var dio = Dio();
  var response = await dio.get(url);
  Map<String, dynamic> data = response.data;
  List<dynamic> products = data['products'];
  for (dynamic p in products) {
    var rating = (p['rating']);
    count++;
    ar += (rating);
  }
  print('Средний рейтинг: ${ar / count}');
}
