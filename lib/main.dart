import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/screens/rooms_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BundlesData>(
      create: (_) => BundlesData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.lightGreen,
          accentColor: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.lightGreen[100],
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: RoomsScreen(),
      ),
    );
  }
}
