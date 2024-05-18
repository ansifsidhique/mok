part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserDataResponse> userDataResult,
    required bool isLoading,
    required bool isError
})= _HomeState;

  factory HomeState.initial()=>const  HomeState(userDataResult: [], isLoading: false, isError: false);

}
