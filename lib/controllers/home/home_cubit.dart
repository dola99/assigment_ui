import 'package:assigment/constant/constant.dart';
import 'package:assigment/controllers/home/home_status.dart';
import 'package:assigment/models/recommanded/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStatus> {
  HomeCubit() : super(IntialHomeStatus());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);
  List<CustomerModel> customerModelList = [
    CustomerModel(
        imagePath: '${Constant.imagePath}960x0.png',
        name: 'Kareem Adel',
        speacilist: 'Supply Chain',
        rate: 5.0),
    CustomerModel(
        imagePath: '${Constant.imagePath}960x0 (1).png',
        name: 'Merna Adel',
        speacilist: 'Supply Chain',
        rate: 4.9)
  ];
  void changeStatusFavorite(bool isFavorite, int index) {
    customerModelList[index].isFavorite = !customerModelList[index].isFavorite;
    emit(ChangeStatusOfFavorite());
  }
}
