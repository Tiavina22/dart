// Function ou fonctions
/*
  permettant de regrouper des blocs réutilisables pour exécuter des tâches spécifiques
*/

// Déclaration de base d'une fonction
// sans type de retour
void direBonjour() {
  print("Bonjour");
}

// avec type de retour
int ajouterDeux(int nombre) {
  return nombre + 2;
}

// Fonctions avec paramètres
// fonction avec plusieurs paramètres
double multiplier(double a, double b) {
  return a * b;
}

// Paramètre facultatifs : en les encadrant de crochets [], soit {}
void afficherInfo(String name, [int? age]) {
  print('Nom : ${name}');
  if (age != null) {
    print('Age: $age');
  }
}

void afficherInfo2(String name, {int? age}) {
  print('Nom : $name');
  if (age != null) {
    print('Age : $age');
  }
}

// Paramètres avec valeurs par défaut
void afficherInfo3(String name, {int age = 18}) {
  print('Nom : $name, Age : $age');
}

// Expressions lambda (Fonction fléchées)
// ce sont des fonctions courtes qui utilisent une syntaxe fléchée =>
// fonction classique
int ajouterTrois(int nombre) {
  return nombre + 3;
}

// avec lambda
int ajouterQuatre(int nombre) => nombre + 4;

// Fonctions anonymes (closures)
// est une fonction sans nom, souvent utilisée comme argument à d'autres fonctions
var nombres = [1, 3, 4, 5];
//  nombres.forEach((nombres) {
//     print(nombres * 2);
//   });

// Fonctions comme objets de première classe
// les fonctions sont des objets, cela signifie que vous pouvez les affecter à des variables, les passer en arguments à d'autres fonctions, et les retourner depuis des fonctions
var multiplication2 = (int a, int b) => a * b;

void executeOperation(int a, int b, Function operation) {
  print(operation(a, b));
}

// Récursivité
// une fonction peut s'appeler elle-même.
int factorielle(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorielle(-1);
}

// Fonction de haut niveua
// dart permet de déclarer des fonctions à l'intérieur d'autres fonctions
void fonctionPrincipale() {
  void fonctionInterne() {
    print("Je suis une fonction interne");
  }

  fonctionInterne();
}

// Fonctions asynchrones (async, await)
// permmettent de gérer des opérations longues, comme les requêtes réseau ou les accès à la base de données , sans bloquer le thread principal
Future<String> obtenirNomUtilisateur() async {
  return Future.delayed(Duration(seconds: 2), () => 'Utilisateur1');
}

Future<String> obtenirAgeByDB() async {
  return Future.delayed(Duration(seconds: 2), () => '18');
}

// Fonctions génératrices
// retourne des valeurs de manières itérative avec yield, soit en synchronisation (sync*), soit en synchronisation (async*)
// Fonction génératrice synchronisée
Iterable<int> nombresPairs(int max) sync* {
  for (int i = 0; i <= max; i += 2) {
    yield i;
  }
}

// Fonction génératrice asynchronisée
Stream<int> nombresPairsAsync(int max) async* {
  for (int i = 0; i <= max; i += 2) {
    yield i;
  }
}

// Portée des fonctions et des variables
// les variables et fonctions déclarée à l'intérieur d'une fonction ont une portée locale et ne peuvent pas être utilisées en dehors de cette focntion

Future<void> main() async {
  // Fonction  anonymes
  nombres.forEach((nombres) {
    print(nombres * 2);
  });

  print('Chargement');
  String nom = await obtenirNomUtilisateur();
  print('Nom obtenu : $nom');

  print(nombresPairs(10));

  var nombre = 1;
  await for (var nombre in nombresPairsAsync(10)) {
    print(nombre);
  }
}
