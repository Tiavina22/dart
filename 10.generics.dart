// Generic, ou génériques
// Pourquoi utiliser générique ?
/*
  C'est nécessaires pour la sécurite du type
*/
// Exemple :
var names = <String>[];

// Une autre raison d'utiliser des génériques est de réduire la duplication des codes
// Exemple, imaginons on créer une interface pour mettre en cachet un objet
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

// on veut une nouvelle spécifiques à la chaîne de cette interface, de l'habitute on créer une autre interface
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

// plus tard si on veut de type de cette interface, on oblige de faire ceca à la n-ième fois

// C'est-à partir de cela, que les types génériques peuvent nous aider de créer toutes ces interfaces
// on créer une interface unique qui prend un paramètre de type :
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Dans ce code, T est le type de stand-in

// On peut utiliser les littéraux de collecte
// <ketTYpe, valueType> (pour les cartes), exemple :
var basketJoueurs = <String>['Lebron James', 'Steph Curry', 'Kyrie Erving'];
var footJoueurs = <String>{'Ronaldo', 'Messi', 'Neymar'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots'
};

// On peut utiliser le types paramétrés avec des constructeurs
// Pour spécifier un ou plusieurs types lors de l'utilisation d'un constructeur, mettre les types entre crochets (<...>), exemple
var footJoueursSet = Set<String>.from(footJoueurs);

// On peut créer une carte qui a des touches entières et des valeurs de type View
var views = Map<int, View>();

class View {
  String description;
  View(this.description);
}

// Collections génériques et types qu'elles contiennent
/*
  ils portent leurs informations de type au moment de l'opération, par exemple
  on peut tester le type de collection
*/
var prenoms = <String>[];

// Utilisation sur de méthodes génériques
// exemples
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}

// T ici c'est du type générique
/*
  dans le type de retour de cette fonction est T
  dans le type d'argument List<T>
  dans le tupe d'une variable locale (T tmp)
*/

void main() {
  names.addAll(['Tiavina', 'Titi', 'Tia']);
  // names.add(42); // erreur

  print(footJoueursSet);

  views[1] = View("Vue principale");
  views[2] = View("Vue secondaire");

  for (int i = 0; i <= views.length; i++) {
    print(views[i]?.description);
  }

  prenoms.addAll(['Seth', 'Kathy', 'Lars']);
  print(prenoms is List<String>); // ça donne true
}
