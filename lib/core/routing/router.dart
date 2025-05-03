import 'package:carelens/feature/Pressures_screen/ui/screen/pressure1_screen.dart';
import 'package:carelens/feature/Pressures_screen/ui/screen/pressure2_screen.dart';
import 'package:carelens/feature/Pressures_screen/ui/screen/pressure3_screen.dart';
import 'package:carelens/feature/anemias_screen/ui/screen/anemia_screen1.dart';
import 'package:carelens/feature/anemias_screen/ui/screen/anemia_screen2.dart';
import 'package:carelens/feature/anemias_screen/ui/screen/gender_screen.dart';
import 'package:carelens/feature/anemias_screen/ui/screen/yourself_screen.dart';
import 'package:carelens/feature/articalse_screen/ui/screen/article_screen.dart';
import 'package:carelens/feature/articalse_screen/ui/screen/one_aretical_view.dart';
import 'package:carelens/feature/chate_me_screen/ui/screen/chate_me_screen.dart';
import 'package:carelens/feature/check_email_and_password/ui/screen/check_email_and_password.dart';
import 'package:carelens/feature/chouse_status_screen/ui/screen/status_screen.dart';
import 'package:carelens/feature/create_new_password_and_success/ui/screen/create_new_password.dart';
import 'package:carelens/feature/create_new_password_and_success/ui/screen/success_screen.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen1.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen2.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen3.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen4.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen5.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/screen/diabetes_screen6.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/analyzing_screen.dart';
import 'package:carelens/feature/forgot_password/ui/screen/forgot_password.dart';
import 'package:carelens/feature/heart_diseases/ui/screen/heart_disease1.dart';
import 'package:carelens/feature/heart_diseases/ui/screen/heart_disease2.dart';
import 'package:carelens/feature/heart_diseases/ui/screen/heart_disease3.dart';
import 'package:carelens/feature/home_screen/ui/screen/home_screen.dart';
import 'package:carelens/feature/home_screen/ui/screen/home_screenn.dart';
import 'package:carelens/feature/login_screen/ui/screen/login_screen.dart';
import 'package:carelens/feature/no_history_screen/ui/screen/no_history_screen.dart';
import 'package:carelens/feature/onboarding/ui/screen/onboarding_screen.dart';
import 'package:carelens/feature/profile_screen/ui/screen/profile_screen.dart';
import 'package:carelens/feature/sign_in_screen/ui/screen/sign_up_screen.dart';
import 'package:carelens/feature/user_status_screen/ui/screen/anemia_status_screen.dart';
import 'package:carelens/feature/user_status_screen/ui/screen/pressure_statue_screen.dart';
import 'package:carelens/feature/welcome_screen/screen/welcome_screeen.dart';
import 'package:carelens/feature/user_status_screen/ui/screen/Heart_status_screen.dart';
import 'package:carelens/feature/user_status_screen/ui/screen/diabetes_status_screen.dart';
import 'package:get/get.dart';

class AppRouter {
  static String initialRoute = '/OnBoardingScreen';

  static List<GetPage> routes = [
    GetPage(name: '/WelcomeScreeen', page: () => WelcomeScreen()),
    GetPage(name: '/Login', page: () => LoginScreen()),
    GetPage(name: '/SingIn', page: () => SignUpScreen()),
    GetPage(name: '/ForgotPassword', page: () => ForgotPassword()),
    GetPage(name: '/CheckEmail', page: () => CheckEmail()),
    GetPage(name: '/CreateNewPassword', page: () => CreateNewPassword()),
    GetPage(name: '/SuccessScreen', page: () => SuccessScreen()),
    GetPage(name: '/StatusScreen', page: () => StatusScreen()),
    GetPage(name: '/OnBoardingScreen', page: () => OnBoardingScreen()),
    GetPage(
        name: '/MyDiabetesStateScreen', page: () => MyDiabetesStateScreen()),
    GetPage(name: '/MyHeartStateScreen', page: () => MyHeartStateScreen()),
    GetPage(name: '/PressureStatueScreen', page: () => PressureStatueScreen()),
    GetPage(name: '/AnemiaStatusScreen', page: () => AnemiaStatusScreen()),
    GetPage(name: '/DiabetesScreen', page: () => DiabetesScreen1()),
    GetPage(name: '/DiabetesScreen2', page: () => DiabetesScreen2()),
    GetPage(name: '/DiabetesScreen3', page: () => DiabetesScreen3()),
    GetPage(name: '/DiabetesScreen4', page: () => DiabetesScreen4()),
    GetPage(name: '/DiabetesScreen5', page: () => DiabetesScreen5()),
    GetPage(name: '/DiabetesScreen6', page: () => DiabetesScreen6()),
    GetPage(name: '/AnalyzingScreen', page: () => AnalyzingScreen()),
    GetPage(name: '/HomeScreen', page: () => HomeScreenChouse()),
    GetPage(name: '/HeartDisease1', page: () => HeartDisease1()),
    GetPage(name: '/HeartDisease2', page: () => HeartDisease2()),
    GetPage(name: '/HeartDisease3', page: () => HeartDisease3()),
    GetPage(name: '/Pressure1Screen', page: () => Pressure1Screen()),
    GetPage(name: '/Pressure2Screen', page: () => Pressure2Screen()),
    GetPage(name: '/Pressure3Screen', page: () => Pressure3Screen()),
    GetPage(name: '/AnemiaScreen1', page: () => AnemiaScreen1()),
    GetPage(name: '/AnemiaScreen2', page: () => AnemiaScreen2()),
    GetPage(name: '/UpdateStatusScreen', page: () => UpdateStatusScreen()),
    GetPage(name: '/GenderScreen', page: () => GenderScreen()),
    GetPage(name: '/ArticleScreen', page: () => ArticleScreen()),
    GetPage(name: '/OneArticalsView', page: () => OneArticalsView()),
    GetPage(name: '/ProfileScreen', page: () => ProfileScreen()),
    GetPage(name: '/HomeScreen', page: () => HomeScreen()),
    GetPage(name: '/ChateMeScreen', page: () => ChateMeScreen()),
    GetPage(name: '/NoHistoryScreen', page: () => NoHistoryScreen()),
  ];
}
