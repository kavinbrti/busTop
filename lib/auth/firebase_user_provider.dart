import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BusStopFirebaseUser {
  BusStopFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BusStopFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BusStopFirebaseUser> busStopFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BusStopFirebaseUser>(
      (user) {
        currentUser = BusStopFirebaseUser(user);
        return currentUser!;
      },
    );
