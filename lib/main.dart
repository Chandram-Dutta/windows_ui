import 'package:fluent_ui/fluent_ui.dart';
import 'package:system_theme/system_theme.dart';
import 'package:windows_ui/pages/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemTheme.accentInstance.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Zed Fluent UI Experiment",
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
