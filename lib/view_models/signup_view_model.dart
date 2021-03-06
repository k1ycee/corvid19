import 'package:corvid/constants/routes.dart';
import 'package:corvid/locator.dart';
// import 'package:corvid/models/user_model.dart';
import 'package:corvid/services/auth/auths.dart';
import 'package:corvid/services/other/navigation_service.dart';
// import 'package:corvid/services/reg/user_profile_update.dart';
import 'package:corvid/view_models/base_model.dart';

class SignUpViewModel extends BaseModel{
  final Auths auth = locator<Auths>();
  // final ProfileData part = locator<ProfileData>();
  final NavigationService naveegate = locator<NavigationService>();


  Future<void> signUp(email,username,password,conpassword)async{
    setBusy(true);
    var signing = await auth.signUp(email: email,password: password,username: username,conpassword: conpassword);
    naveegate.navigateTo(HomeViewRoute);
    setBusy(false);
    return signing;
  }
}