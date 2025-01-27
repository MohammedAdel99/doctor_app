import 'package:flutter/material.dart';
import 'package:doctor_app/doctor_app.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/core/di/dependency_injection.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DoctorApp(
    appRouter: AppRouter(),
  ));
}