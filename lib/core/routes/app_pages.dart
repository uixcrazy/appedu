import 'package:app_educhain/core/routes/app_routes.dart';
import 'package:app_educhain/features/bookdetail/book_detail_screen.dart';
import 'package:app_educhain/features/bookdetail/book_detail_binding.dart';
import 'package:app_educhain/features/main/main_binding.dart';
import 'package:app_educhain/features/main/main_screen.dart';
import 'package:app_educhain/features/notification/notification_binding.dart';
import 'package:app_educhain/features/notification/notification_screen.dart';
import 'package:app_educhain/features/rating/rating_binding.dart';
import 'package:app_educhain/features/rating/rating_screen.dart';
import 'package:app_educhain/features/reading_book/reading_binding.dart';
import 'package:app_educhain/features/reading_book/reading_screen.dart';
import 'package:app_educhain/features/reading_pdf/reading_pdf_binding.dart';
import 'package:app_educhain/features/reading_pdf/reading_pdf_screen.dart';
import 'package:app_educhain/features/splash/splash_binding.dart';
import 'package:app_educhain/features/splash/splash_screen.dart';
import 'package:get/get.dart';

final pages = [
  GetPage(
      name: AppRoutes.Splash,
      page: () => const SplashScreen(),
      binding: SplashBindings()),
  GetPage(
      name: AppRoutes.Main,
      page: () => const MainScreen(),
      binding: MainBindings()),
  GetPage(
      name: AppRoutes.Reading,
      page: () => const ReadingScreen(),
      binding: ReadingBinding()),
  GetPage(
      name: AppRoutes.ReadingPdf,
      page: () => const ReadingPdfScreen(),
      binding: ReadingPdfBinding()),
  GetPage(
      name: AppRoutes.BookDetail,
      page: () => const BookDetailScreen(),
      binding: BookDetailBindings()),
  GetPage(
      name: AppRoutes.Notification,
      page: () => const NotificationScreen(),
      binding: NotificationBindings()),
  GetPage(
      name: AppRoutes.Rating,
      page: () => const RatingScreen(),
      binding: RatingBindings()),
];
