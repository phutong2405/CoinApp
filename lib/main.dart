import 'package:coin_app/bloc/crypto_bloc.dart';
import 'package:coin_app/bloc/crypto_event.dart';
import 'package:coin_app/screen_control.dart';
import 'package:coin_app/services/data_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CryptoRepository(),
      child: BlocProvider(
      create: (context) => CryptoBloc(
        cryptoRepository: context.read<CryptoRepository>(),
      )..add(Start()),
      child: MaterialApp(
      title: 'c0in2mil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black.withBlue(50),
        ),
        useMaterial3: true,
      ),
      home: const ScreenControl(),
    ),
    ),
      
      
      
    );

    
     
  }
}
