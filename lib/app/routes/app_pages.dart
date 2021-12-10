import 'package:get/get.dart';

import 'package:minimarket/app/modules/cart/bindings/cart_binding.dart';
import 'package:minimarket/app/modules/cart/views/cart_view.dart';
import 'package:minimarket/app/modules/category/bindings/category_binding.dart';
import 'package:minimarket/app/modules/category/views/category_view.dart';
import 'package:minimarket/app/modules/home/bindings/home_binding.dart';
import 'package:minimarket/app/modules/home/views/home_view.dart';
import 'package:minimarket/app/modules/login/bindings/login_binding.dart';
import 'package:minimarket/app/modules/login/views/login_view.dart';
import 'package:minimarket/app/modules/profile/bindings/profile_binding.dart';
import 'package:minimarket/app/modules/profile/views/profile_view.dart';
import 'package:minimarket/app/modules/root/bindings/root_binding.dart';
import 'package:minimarket/app/modules/root/views/root_view.dart';
import 'package:minimarket/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:minimarket/app/modules/transaction/views/transaction_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
    ),
  ];
}
