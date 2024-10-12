// Type systems
// exemple rien avoir pour le moment
void printInts(List<int> a) => print(a);

void main() {
  // final list = []; // ça donne erreur
  final List<int> list = []; // la même chose : final list = <int>[];
  list.add(2);
  list.add(4);
  printInts(list);

  print(voiture.map((car) => print(car)));
}

// ce code précédent donne lieu à une erreur de type sur list(s'illuminé ci-dessus) à l'appel de printInts(list):

// Soundness ?

// Soundness sert à assurer que votre programme ne peut pas entrer dans certains états invalides

// Ses avantages :
/*
  - révéler les boues liés au type au moment de la compilation
  - code plus lisible
  - code plus maintenable
  - meilleure compilation à l'avance 
*/

// Les règles,pour l'analyse statique passante
/*
  - utiliser des types de retour de sons lorsque les méthodes impérieuses
  - utilser des types de paramètres sonores lorsque les méthodes impérieuses sont prépondérantes
  - n'utilise pas une liste dynamique comme liste typée
*/

var voiture = ['Golf', 'Renault', 'Peugeot'];
