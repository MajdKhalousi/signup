import 'package:get/get.dart';


import '../features/authentication/controllers/signup/signup_controller.dart';
import '../utils/network_manager.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());

/*
    // Hier werden die Abhängigkeiten registriert

    // Registrierung des SignupControllers als Singleton
    Get.lazyPut<SignupController>(() => SignupController());

    // Registrierung des AuthControllers als Singleton
    Get.lazyPut<AuthController>(() => AuthController());

    // Netzwerkservice initialisieren
    Get.lazyPut<NetworkService>(() => NetworkService(), fenix: true);

    // Falls du andere Services oder Controller benötigst, hier hinzufügen

 */
  }
}