import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shafique/data/repository/category_repo.dart';

class CategoryController extends GetxController implements GetxService {
  final CategoryRepo categoryRepo;
  CategoryController({required this.categoryRepo});
  static CategoryController get to => Get.find<CategoryController>();
}
