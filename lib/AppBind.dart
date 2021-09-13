import 'package:get/get.dart';
import 'package:mysite/Controller/HoverController.dart';

class AppBind extends Bindings {
  @override
  void dependencies() {
    Get.put<HoverController>(HoverController());
  }
}
