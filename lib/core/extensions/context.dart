import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wed_plan_project/generated/l10n.dart';

extension ContextExtensions on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  S get locale => S.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  Color get primaryColor => Theme.of(this).primaryColor;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  NavigatorState get navigator {
    bool isRoot = true;
    return Navigator.of(this, rootNavigator: isRoot);
  }

  // TextDirection get textDirection =>
  //     BlocProvider.of<ThemeCubit>(this).locale == englishLocale
  //         ? TextDirection.ltr
  //         : TextDirection.rtl;

  // StackRouter get router => AutoRouter.of(this);

  // Future<T?> pushAndPopAll<T extends Object?>(PageRouteInfo route,
  //     {OnNavigationFailure? onFailure}) {
  //   router.popUntil((r) => false);
  //   return router.push<T>(route);
  // }

//   Future<T?> showSnackBar<T>({
//     required String message,
//     SnackBarStates state = SnackBarStates.idle,
//     FlashPosition position = FlashPosition.top,
//     Duration? duration,
// }) => this.showFlash<T>(
//     duration: duration ?? const Duration(seconds: 3),
//     builder: (_, controller) => FlashBar(
//       padding: EdgeInsets.zero,
//       builder: (_, index) => AppSnackBar(
//         message: message,
//         state: state,
//       ),
//       controller: controller,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//         // side: BorderSide(),
//       ),
//       elevation: 0,
//       position: FlashPosition.top,
//       margin: const EdgeInsets.symmetric(horizontal: 24),
//       clipBehavior: Clip.antiAlias,
//       behavior: FlashBehavior.floating,
//       content:  const SizedBox(),
//     ),
//   );
}
