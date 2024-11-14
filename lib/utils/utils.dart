import '../models/credentials.dart';

bool checkCreds(Credentials creds) {
  if (creds.pw == "20162000476" && creds.user == "eeluque@unah.hn") {
    print("passed!");
  } else {
    print("not passed!");
  }
  return false;
}
