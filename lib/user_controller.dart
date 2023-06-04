import 'package:get/get.dart';
import 'package:getx_intro/user_model.dart';

class UserController extends GetxController {

  Rx<UserModel> user = UserModel().obs;

  void setUserName(String userName){
    //MÉTODO 01
    // user.update((user) {
    //   user?.name = userName;
    // });

    //MÉTODO 02
    user.value.name = userName;
    user.refresh();
  }

  void setUserAge(int userAge){
    //MÉTODO 01
    // user.update((user) {
    //   user?.age = userAge;
    // });

    //MÉTODO 02
    user.value.age = userAge;
    user.refresh();
  }

}