// Métadonnées
// C'est quoi? : pour donner des info supplémentaires à notre code
/*
les annotations Commence par @, suivie soit d'une référence à une constante de temps de compilation (comme deprecated for example),
ou appel à un constructeur constant
*/

// Y a quatre annotations :
/*
  @Deprecated
  @deprecated
  @override
  @pragma
*/

// 1 @Deprecated
// Pour marquer un élément (fonction, classe, méthode, ...), cela signifie que l'élément ne doit plus être utilisé, car peut-être supprimé ou modifié dans une future version
@Deprecated(
    'Use newMethod instead') // Ici on avertit que faut utiliser la nouvelle méthode, si on utilise la méthode ancienne, on a un avertissement lors de la compilation
void oldMethod() {
  print("Ceci est un old méthode");
}

void newMethod() {
  print('Ceci est un nouveau méthode');
}

// 2 @deprecated
// Version abrégée de @Deprecated. Il n'accepte pas de message personnalisé et moins souvent utilisée que @Deprecated. Fonctionne de la même manière que @Deprecated
@deprecated
void oldFunction() {
  // Si on essais d'utiliser oldFunction() : on a un avertissement que oldFunction es deprecated
  print("Ceci est une ancienne fonction");
}

// 3 @override
// Pour indiquer que la méthode, la propriété, ou l'opérateur qu'on définisse remplace une méthode, propriété ou opérateur d'une classe parente (héritée).
// Cela nous aide à éviter des erreurs où une méthodees est supposée être remplacée mais ne l'est pas réellement

class Personne {
  void dormir() {
    print("Cette personne dort");
  }
}

class Malgache extends Personne {
  // Ici, la méthode dormir de la classe Malgache remplace celle de la classe parente Personne
  @override
  void dormir() {
    print("Une malgache dort aussi");
  }
}

// 4 @pragma
// Pour indiquer des directive spécifiques au compilateur ou à l'exécution.
// Généralement réservée à un usage interne pour des optimisations ou des comportements spécifiques à certains env. Elle prend une chaîne de caractère comme argument pour définir une action particulière, for example ('vm:entry-point')
// Donne des directives spécifiques au compilateur pour des optimisations ou comportements particuliers.

// Cela indique que cette fonction est un point d'entrée important pour le compilateur du Dart VM
@pragma('vm:entry-point')
void importantFunction() {
  print("This function is impotant for the VM");
}

// NB : on peut créer nos propres annotations de métadonnées
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

// Ici, veut dire que la class Todo est attaché à une fonction doSomething
@Todo('Dash', 'Implement this function')
void doSomething() {
  print("Do something");
}

void main() {}
