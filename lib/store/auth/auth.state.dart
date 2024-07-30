class AuthState {
  final bool loading;
  final String error;

  AuthState(this.loading, this.error);

  factory AuthState.initial() => AuthState(false, '');

  AuthState copyWith({bool? loading, String? error}) =>
      AuthState(loading ?? this.loading, error ?? this.error);

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          loading == other.loading &&
          error == other.error;

  @override
  int get hashCode =>
      super.hashCode ^ runtimeType.hashCode ^ loading.hashCode ^ error.hashCode;

  @override
  String toString() => "AuthState { loading: $loading,  error: $error}";
}
