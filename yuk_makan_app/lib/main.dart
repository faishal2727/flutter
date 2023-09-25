import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuk_makan_app/bloc/bloc_list/restaurant_bloc.dart';
import 'package:yuk_makan_app/bloc/search_bloc/searh_bloc_bloc.dart';
import 'package:yuk_makan_app/screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade300),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => SearhBlocBloc(),
        ),
        BlocProvider(
          create: (context) =>
              RestaurantBloc()..add(const RestaurantEvent.started()),
        ),
      ], child: const SearchScreen()),
      routes: {
        '/search': (context) =>
            const SearchScreen(), // Tambahkan rute untuk SearchScreen
      },
    );
  }
}
