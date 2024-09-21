part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({

    @Default(0) int count,


}) = _Initial;
}
