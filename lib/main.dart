import 'package:audio_app/view-model/cubit/homecubit.dart';
import 'package:audio_app/view/screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [BlocProvider(create: (context)=> HomeCubit())],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
