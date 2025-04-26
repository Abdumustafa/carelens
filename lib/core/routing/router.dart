import 'package:carelens/feature/check_email_and_password/ui/screen/check_email_and_password.dart';
import 'package:carelens/feature/chouse_status_screen/ui/screen/status_screen.dart';
import 'package:carelens/feature/create_new_password_and_success/ui/screen/create_new_password.dart';
import 'package:carelens/feature/create_new_password_and_success/ui/screen/success_screen.dart';
import 'package:carelens/feature/forgot_password/ui/screen/forgot_password.dart';
import 'package:carelens/feature/login_screen/ui/screen/login_screen.dart';
import 'package:carelens/feature/sign_in_screen/ui/screen/sign_up_screen.dart';
import 'package:carelens/feature/welcome_screen/screen/welcome_screeen.dart';
import 'package:get/get.dart';

class AppRouter {
  static String initialRoute = '/WelcomeScreeen';

  static List<GetPage> routes = [
    GetPage(name: '/WelcomeScreeen', page: () => WelcomeScreen()),
    GetPage(name: '/Login', page: () => LoginScreen()),
    GetPage(name: '/SingIn', page: () => SignUpScreen()),
    GetPage(name: '/ForgotPassword', page: () => ForgotPassword()),
    GetPage(name: '/CheckEmail', page: () => CheckEmail()),
    GetPage(name: '/CreateNewPassword', page: () => CreateNewPassword()),
    GetPage(name: '/SuccessScreen', page: () => SuccessScreen()),
    GetPage(name: '/StatusScreen', page: () => StatusScreen()),
  ];
}
