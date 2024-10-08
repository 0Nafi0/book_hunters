import 'package:book_hunters/Config/Messages.dart';
import 'package:book_hunters/Pages/HomePage/HomePage.dart';
import 'package:book_hunters/Pages/WelcomePage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> loginWithEmail() async {
    isLoading.value = true;
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      successMessage("Login Success");
      Get.offAll(const HomePage());

    } catch (ex) {
      print('Error signing in with Google: $ex');
      // Handle error gracefully, show snackbar or alert dialog
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signout() async {
  isLoading.value = true;
  try {
    // Sign out from FirebaseAuth
    await FirebaseAuth.instance.signOut();
    
    // Sign out from GoogleSignIn
    await GoogleSignIn().signOut();

    successMessage("Logout Success");
    Get.offAll(const WelcomePage()); // Navigate back to login page after successful logout
  } catch (ex) {
    print('Error signing out: $ex');
    // Handle error gracefully, show snackbar or alert dialog
  } finally {
    isLoading.value = false;
  }
}

}
