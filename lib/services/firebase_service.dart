/// ScreenerPro Firebase Configuration Placeholder.
/// 
/// Replace the following credentials with your actual Firebase Project Settings.
/// [IMPORTANT] Do not commit real keys to a production repository.
class FirebaseConfiguration {
  static const String apiKey = 'YOUR-API-KEY-HERE-DUMMY-X1Y2Z3';
  static const String authDomain = 'screenerpro-hackathon.firebaseapp.com';
  static const String projectId = 'screenerpro-hackathon';
  static const String storageBucket = 'screenerpro-hackathon.appspot.com';
  static const String messagingSenderId = '000000000000';
  static const String appId = '1:000000000000:web:abcdef1234567890';

  static Map<String, dynamic> getConfig() {
    return {
      'apiKey': apiKey,
      'authDomain': authDomain,
      'projectId': projectId,
      'storageBucket': storageBucket,
      'messagingSenderId': messagingSenderId,
      'appId': appId,
    };
  }
}

/// Mock Firebase Auth Service for Showcase.
class FirebaseAuthService {
  Future<bool> signInWithEmail(String email, String password) async {
    // [SHOWCASE ONLY] Simulates asynchronous login
    await Future.delayed(const Duration(seconds: 1));
    return email == 'admin@screenerpro.com' && password == 'password123';
  }

  Future<void> signOut() async {
    // Logout logic placeholder
  }
}
