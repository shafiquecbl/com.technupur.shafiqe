import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shafique/data/model/response/category.dart';
import 'package:shafique/data/repository/category_repo.dart';

class CategoryController extends GetxController implements GetxService {
  final CategoryRepo categoryRepo;
  CategoryController({required this.categoryRepo});
  static CategoryController get find => Get.find<CategoryController>();

  List<Category> _categories = [];
  bool _isLoading = false;

  List<Category> get categories => _categories;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    update();
  }

  // Fetch categories
  Future<void> fetchCategories() async {
    _categories.clear();
    isLoading = true;
    http.Response? response = await categoryRepo.getCategories();
    if (response != null) {
      _categories = jsonDecode(response.body)
          .map<Category>((category) => Category.fromJson(category))
          .toList();
      isLoading = false;
    }
  }
}
