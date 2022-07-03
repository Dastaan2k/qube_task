import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qube_task/view_models/dashboard_view_model.dart';
import 'package:qube_task/views/dashboard/dashboard_page.dart';
import 'package:qube_task/views/dummy_page.dart';
import 'package:qube_task/views/home_page.dart';

import 'misc/constants.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QBHealth Task',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme()
      ),
      initialRoute: '/',
      scrollBehavior: const CupertinoScrollBehavior(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage(), transition: Transition.cupertino),
        GetPage(name: '/dummy', page: () => const DummyPage(), transition: Transition.cupertino),
        GetPage(name: '/dashboard', page: () => const DashboardPage(), binding: BindingsBuilder(() => Get.lazyPut<DashboardViewModel>(() => DashboardViewModel())), transition: Transition.cupertino)
      ],
    );
  }
}


