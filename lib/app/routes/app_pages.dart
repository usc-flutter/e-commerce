import 'package:get/get.dart';

import '../modules/cartScreen/bindings/cart_screen_binding.dart';
import '../modules/cartScreen/views/cart_screen_view.dart';
import '../modules/checkOut/bindings/check_out_binding.dart';
import '../modules/checkOut/views/check_out_view.dart';
import '../modules/checkoutScreen/bindings/checkout_screen_binding.dart';
import '../modules/checkoutScreen/views/checkout_screen_view.dart';
import '../modules/favouritScreen/bindings/favourit_screen_binding.dart';
import '../modules/favouritScreen/views/favourit_screen_view.dart';
import '../modules/homeScreen/bindings/home_screen_binding.dart';
import '../modules/homeScreen/views/home_screen_view.dart';
import '../modules/logOutScreen/bindings/log_out_screen_binding.dart';
import '../modules/logOutScreen/views/log_out_screen_view.dart';
import '../modules/loginScreen/bindings/login_screen_binding.dart';
import '../modules/loginScreen/views/login_screen_view.dart';
import '../modules/nav/bindings/nav_binding.dart';
import '../modules/nav/views/nav_view.dart';
import '../modules/profileScreen/bindings/profile_screen_binding.dart';
import '../modules/profileScreen/views/profile_screen_view.dart';
import '../modules/resultScreen/bindings/result_screen_binding.dart';
import '../modules/resultScreen/views/result_screen_view.dart';
import '../modules/signUpScreen/bindings/sign_up_screen_binding.dart';
import '../modules/signUpScreen/views/sign_up_screen_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAV,
      page: () => const NavView(),
      binding: NavBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.CART_SCREEN,
      page: () => const CartScreenView(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURIT_SCREEN,
      page: () => const FavouritScreenView(),
      binding: FavouritScreenBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT_SCREEN,
      page: () => const CheckoutScreenView(),
      binding: CheckoutScreenBinding(),
    ),
    GetPage(
      name: _Paths.RESULT_SCREEN,
      page: () => const ResultScreenView(),
      binding: ResultScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOG_OUT_SCREEN,
      page: () => const LogOutScreenView(),
      binding: LogOutScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_SCREEN,
      page: () => const SignUpScreenView(),
      binding: SignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_OUT,
      page: () => const CheckOutView(),
      binding: CheckOutBinding(),
    ),
  ];
}
