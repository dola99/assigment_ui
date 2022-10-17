import 'package:assigment/controllers/chat/chat_cubit.dart';
import 'package:assigment/controllers/home/home_cubit.dart';
import 'package:assigment/screens/splach/screen/splach_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialView extends StatelessWidget {
  const MaterialView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatCubit>(
          create: (context) => ChatCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplachScreen(),
      ),
    );
  }
}
