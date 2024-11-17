import 'package:feature_based_arch/features/dashboard/presentation/state/dashboard_state.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardController extends Cubit<DashboardState>{
  DashboardController():super(const DashboardState());

  void setPageIndex(int value){
    emit(state.copyWith(pageIndex: value));
  }
}