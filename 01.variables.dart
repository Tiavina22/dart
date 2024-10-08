void main() {
  print("Hello, World!");
  print('Utilisation de num ${temperature}');
}

// Les variables
// 1 - types de base
// On peut déclarer une variable dart sans spéficifier son type avec le mot clé var, Object, dynamic
var name = "Tiavina";
var prenom = 'Tiavina';

Object age = 20;
dynamic taille = 1.76;

// On peut spécifier son type

// Chaîne de caractère
String ville = "Toamasina";
String province = 'Antananarivo';

// Nombre
int years = 2024; // Nombre entier
double salaire = 4.000; // Nombre décimal
num temperature =
    22.5; // C'est le type parent de int et double, il peut contenir des valeurs entières ou décimales

// 2 - Collections
// List (collection d'éléments ordonnés), similaire aux tableaux ou aux listes
List<int> notes = [20, 15, 18, 5];

// Set (collection d'éléments uniques non ordonnés)
Set<String> fruits = {'Apple', 'Banana', 'Orange'};

// Map (collection d'éléments avec des paires clé-valeur)
Map<String, int> scores = {'Alice': 100, 'Bob': 55};

// Nb :
var mention = "Bien"; // Dart déduira que mention est de type string
dynamic variable = 'Variable'; // variable ici est de type string
// variable = 10; ici variable est maintenant de type entier

// Nullable
int? nullableNumber = null; // ici, nullableNumber peut contenir de null
String? firstName; // par défaut, firstName est null
double? diametre = 20.0; // Diametre peut-être null ou double

// late (on utilise pour juste déclarer une variables et c'est après qu'on assigne une valeur)
late String villeDeReve =
    'Melbourne'; // Si on n'utilise pas villeDeReve dans nos programme, son valeur n'est jamais assigner

late String prix; // On déclare juste, et c'est apres qu'on le donne une valeur

void getPrix() {
  prix = "5000 Euro";
}

late num temperatureTana =
    getTemperature(); // Si temperatureTana n'est jamais utiliser, getTemperature n'est jamais appellé

num getTemperature() {
  return 22;
}

// On peut déclarer une variable avec le mot clé final si vous n'avez pas l'intention de le modifier
final String notrePlanete = "Earth";

// On peut déclarer une constante avec le mot clé constante
const PI = 3.14;

// NB : on peut utiliser "final" et "const" sans avoir typer
const meters = 1.76;
final meters2 = 1.76;
