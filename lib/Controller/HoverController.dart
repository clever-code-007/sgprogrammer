import 'package:get/get.dart';

class HoverController extends GetxController {
  static HoverController get to => Get.find();
  RxBool home = false.obs;
  RxBool about = false.obs;
  RxBool services = false.obs;
  RxBool contact = false.obs;

  RxInt activeTab = 0.obs;
}
