abstract class ResultState<T> {
  const ResultState._();

  factory ResultState.success(T data) => Success._(data);

  factory ResultState.failure(Exception reason) => Failure._(reason);

  static Future<ResultState<T>> fromAsync<T>(Future<T> Function() function) async {
    try {
      final data = await function();
      return ResultState.success(data);
    } on Exception catch (exception) {
      return ResultState.failure(exception);
    }
  }

  R fold<R>({
    required R Function(T) onSuccess,
    required R Function(Exception) onFailure,
  }) {
    if (this is Success) {
      return onSuccess((this as Success).data);
    } else {
      return onFailure((this as Failure).reason);
    }
  }

  doOnSuccess(void Function(T) onSuccess) {
    if (this is Success) {
      onSuccess((this as Success).data);
    }
  }

  ResultState<T2> map<T2>(T2 Function(T) mapSuccess) {
    return fold(
      onSuccess: (data) => ResultState.success(mapSuccess(data)),
      onFailure: (reason) => ResultState.failure(reason),
    );
  }
}

class Success<T> extends ResultState<T> {
  const Success._(this.data) : super._();

  final T data;

  @override
  bool operator ==(other) {
    return other is Success && data == other.data;
  }

  @override
  int get hashCode => data.hashCode;
}

class Failure<T> extends ResultState<T> {
  const Failure._(this.reason) : super._();

  final Exception reason;

  @override
  bool operator ==(other) {
    return other is Failure && reason == other.reason;
  }

  @override
  int get hashCode => reason.hashCode;
}
