import 'dart:developer';

class RecordLearn {
  var record = ('first', a: 2, b: true, 'last');
  void recordPrint() {
    log("The record is: ${record.a}");
  }

  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  String theName = 'Default';

  String get() {
    return theName;
  }

  set(String nameToFill) {
    theName = nameToFill;
  }
}

// Sealed class example********************

sealed class Response {}

class Success<Type> extends Response {
  final Type data;
  Success(this.data);
}

class Failure extends Response {
  final Error error;
  Failure(this.error);
}

String toStringing(Response response) => switch (response) {
      // Can access `response.data` without an instance check!
      Success _ => response.data.toString(),
      Failure _ => response.error.toString(),
    };
String toTypeStringing(Response response) => switch (response) {
      Success _ => 'Success',
      Failure _ => 'Failure',
    };

// Record class example****************

// Function return
(double lat, double lon) geoLocation(String name) =>
    (231.23, 36.8219);

void examples() {
  // Variable declaration / assignment
  (String, int) record;
  record = ('A string', 123);

  // // Named-args
  // ({int a, bool b}) record;
  // record = (a: 123, b: true);

  // // Accessing them!
  // var record = ('first', a: 2, b: true, 'last');
  // print(record.$1); // Prints 'first'
  // print(record.a); // Prints 2
  // print(record.b); // Prints true
  // print(record.$2); // Prints 'last'
}
