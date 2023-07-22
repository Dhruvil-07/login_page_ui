import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_pages_ui/login_1/screens/login_1_screen.dart';
import 'package:login_pages_ui/login_1/theme/theme.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fun){
    runApp(my_login_pages());
  });

}


class my_login_pages extends StatelessWidget {
  const my_login_pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
       return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: login1_light_theme(context),
          home: login_1_screen(),
        );
      },
    );
  }
}
