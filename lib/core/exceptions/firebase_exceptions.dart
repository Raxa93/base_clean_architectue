




import 'package:firebase_auth/firebase_auth.dart';

String handleFirebaseExceptions(dynamic error){

  String errorMessage = 'Something went wrong';


  if(error is FirebaseAuthException){
      //here we can handle all cases but i am doing these two for now, becasue of short time
    switch(error.code) {
      case 'invalid-email':
        errorMessage = 'Invalid email address';
        break;
        case 'too-many-requests':
        errorMessage = 'Too Many request please try again later';
        break;
      default:
        errorMessage = 'Something went wrong';
        break;
    }


  }

return errorMessage;
}