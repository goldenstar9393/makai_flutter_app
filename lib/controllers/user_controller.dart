import 'package:get/get.dart';
import 'package:makaiapp/models/users_model.dart';

class UserController extends GetxController {
  Rx<User> currentUser = User().obs;

  double myLatitude = 51.509865;
  double myLongitude = -0.118092;
}
