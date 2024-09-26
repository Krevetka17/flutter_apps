import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
import 'package:flutter_cubit/pages/detail_pages/cubit/store_page_info_states.dart';
import '../../../misc/colors.dart';

class StorePageInfoCubits extends Cubit<List<StorePageInfoState>>{
  StorePageInfoCubits(): super([]);
  Color? color = AppColors.mainColor;
  addPageInfo(String? name,  int? index){
    emit([StorePageInfoState(name: name, index: index, color: color), ...state]);
  }

  updatePageInfo(String? name,  int? index){
    var myList = state;
    for(int i=0; i<myList.length; i++){
      if(myList[i].name==name){
        var rem = state.remove(i);
      }
    }

    emit([StorePageInfoState(name: name, index: index, color: color), ...state]);
  }

  updatePageWish(String? name, int? index, Color? changedColor){
    var myList = state;
    for(int i=0; i<myList.length; i++){
      if(myList[i].name==name){
        var rem = state.remove(i);
      }
    }
    //with this we always get the update color of we change the wish button color
    color=changedColor;
    emit([StorePageInfoState(name: name, index: index, color: color), ...state]);
  }

}
