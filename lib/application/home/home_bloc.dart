import 'package:bloc/bloc.dart';
import 'package:blocpersondetails/domain/core/main%20failure/main_failure.dart';
import 'package:blocpersondetails/domain/repositery/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/home page/user_response.dart';
import '../../infrastructure/home page/homerepository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;
  HomeBloc(this._homeRepository) : super(HomeState.initial()) {
    on<Initial>((event, emit) async {
      emit(
          const HomeState(userDataResult: [], isLoading: true, isError: false));
      final data = await _homeRepository.getUserData();
      final result = data.fold(
          (MainFailure l) => const HomeState(
              userDataResult: [], isLoading: false, isError: true),
          (UserResponse r) => HomeState(
              userDataResult: r.data, isLoading: false, isError: false));
      emit(result);
    });
  }
}
