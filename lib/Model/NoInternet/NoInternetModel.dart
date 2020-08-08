
class NoInternetModel {
  String message;
  NoInternetModel({
    this.message,
  });


  @override
  String toString() => 'Glitch(message: $message)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is NoInternetModel &&
        o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}