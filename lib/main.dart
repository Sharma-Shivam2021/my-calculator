import 'package:calculator/calculator/model/calculator_input_model.dart';
import 'package:calculator/calculator/screen/calculator_screen.dart';
import 'package:calculator/converter/data/conversion_model.dart';
import 'package:calculator/converter/screens/Area/screens/area_screen.dart';
import 'package:calculator/converter/screens/Length/screen/length_screen.dart';
import 'package:calculator/converter/screens/Weight/screen/weight_screen.dart';
import 'package:calculator/converter/screens/bmi/screen/bmi_screen.dart';
import 'package:calculator/converter/screens/converter_screen.dart';
import 'package:calculator/converter/screens/temperature/screen/temperature_screen.dart';
import 'package:calculator/converter/screens/time/screen/time_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CalculatorInputModel()),
          ChangeNotifierProvider(create: (context) => ConversionModel()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      initialRoute: CalculatorScreen.routeName,
      routes: {
        CalculatorScreen.routeName: (context) => const CalculatorScreen(),
        ConverterScreen.routeName: (context) => const ConverterScreen(),
        AreaScreen.routeName: (context) => const AreaScreen(),
        BMIScreen.routeName: (context) => const BMIScreen(),
        LengthScreen.routeName: (context) => const LengthScreen(),
        WeightScreen.routeName: (context) => const WeightScreen(),
        TemperatureScreen.routeName: (context) => const TemperatureScreen(),
        TimeScreen.routeName: (context) => const TimeScreen(),
      },
    );
  }
}
