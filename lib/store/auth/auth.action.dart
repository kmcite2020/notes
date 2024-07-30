class AuthAction {
  @override
  String toString() {
    return 'AuthAction { }';
  }
}

class AuthSuccessAction {
  final int isSuccess;

  AuthSuccessAction({required this.isSuccess});
  @override
  String toString() {
    return 'AuthSuccessAction { isSuccess: $isSuccess }';
  }
}

class AuthFailedAction {
  final String error;

  AuthFailedAction({required this.error});

  @override
  String toString() {
    return 'AuthFailedAction { error: $error }';
  }
}
