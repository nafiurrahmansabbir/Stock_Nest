import 'package:get/get.dart';
import 'package:stock_nest/presentation/ui/screens/product_list_screen.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>const ProductListScreen());
  }

}