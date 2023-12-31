import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_app/binding/initial_binding.dart';
import 'package:youtube_app/controllers/search_controller.dart';
import 'package:youtube_app/controllers/youtube_details_controller.dart';
import 'package:youtube_app/layout/app_screen/app.dart';
import 'package:youtube_app/modules/search/search_screen.dart';
import 'package:youtube_app/modules/youtube_details/youtube_details_screen.dart';
import 'package:youtube_app/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone',
      debugShowCheckedModeBanner: false,
      initialBinding: InitBinding(),
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
      getPages: [
        GetPage(name: "/", page: () => AppScreen()),
        GetPage(
          name:"/detail/:videoId",
          page: () =>YoutubeDetailsScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut<YoutubeDetailsController>(()=>YoutubeDetailsController());
          }),
        ),
        GetPage(
          name: "/search",
          page: () => SearchVideosScreen(),
          binding: BindingsBuilder(() {
            Get.put(SearchYoutubeController(),permanent: true);
          }),
        )
      ],
    );
  }
}
