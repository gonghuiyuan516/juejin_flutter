import 'package:bloc/bloc.dart';

import 'home_page_state.dart';

class Home_pageCubit extends Cubit<Home_pageState> {
  Home_pageCubit() : super(Home_pageState().init());
}
