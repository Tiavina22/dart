// Bibliothèques et importations
/*
  les import et les library sont des directives qui nous aide à créer une base de code modulaire et partageable.
*/

// Utilisation des bibliothèques
// par exmple, les web app avec dart, utilise généralement la bibliothèque dart:html qui peuvent importer comme ça : import 'dart:html'
/*
  Pour utiliser des bibliothèques dart :
  import 'dart:nom_du_package';

  Pour utiliser des package externe, il faut l'installer et puis
  import 'package:chemin_du_package/nom_du_package';

  On peut spécifier une bibliothèque à l'aide d'une prefixe
  import 'package:lib2/lib2.dart' as lib2;


  // importation d'une partie seulement d'une bibliothèque
  // importer seulement foo
  import 'package:lib1/lib1.dart' show foo;

  // Import tous les autres sauf foo
  import 'package:lib2/lib2.dart' hide foo;

  // Pour charger paresseusement une bibliothèque, on peut l'importer en utilsant deffered as
  import 'package:greetings/hello.dart' deferred as hello;

  Quand on a besoin de la bibliothèque, on invoque d'abord le loadLibrary() à l'aide de l'identifiant de la biblio
  
  Future<void> greet() async {
    await hello.loadLibrary();
    hello.printGreeting();
  }

  // Le mot clé deferred imformele compilateur que la bibliothèque sera chargé ultérieurement. On doit utiliser la méthde
  loadLibrary()pour la charger avant d'accéder au élements qu'elle contient
*/

import 'calculatrice_library.dart' deferred as calculatrice;

void main() {
  // Avant d'uiliser notre library, il faut le loader

  Future<void> calcul() async {
    await calculatrice.loadLibrary();
    var resAdd = calculatrice.addition(15, 15);

    print(resAdd);
  }

  calcul();
}
