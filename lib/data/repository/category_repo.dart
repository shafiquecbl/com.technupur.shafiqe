import 'package:http/http.dart';
import 'package:shafique/data/model/response/api/api_client.dart';

class CategoryRepo {
  final ApiClient apiClient;
  CategoryRepo({required this.apiClient});

  Future<Response?> getCategories() async {
    return await apiClient
        .getData('https://tp-flutter-test.vercel.app/v1/category');
  }
}
