import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/pages/detail_pages/detail_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

import '../pages/navpages/main_page.dart';
import 'app_cubit_states.dart';
import 'app_cubits.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is DetailState){
            return DetailPage();
          }if(state is WelcomeState){
            return WelcomePage();
          }if(state is LoadedState){
            return MainPage();
          }if(state is LoadingState){
            return Center(child: CircularProgressIndicator());
          }else {
            return Container();
          }
        },
      ),
    );

  }
}
