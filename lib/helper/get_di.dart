import 'package:get/get.dart';
import 'package:shafique/controller/category_controller.dart';
import 'package:shafique/data/model/response/api/api_client.dart';
import 'package:shafique/data/repository/category_repo.dart';

Future<void> init() async {
  // Core
  Get.lazyPut(() => ApiClient());

  // Repository
  Get.lazyPut(() => CategoryRepo(apiClient: Get.find()));

  // Controller
  Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
}
