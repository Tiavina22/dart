// Collections
// Avec Dart, on a des collections de listes, de set et de map

// Listes, c'est une collection ordonnée avec une syntaxe : var list = [1, 2, 3];
var listeNotes = [12, 15, 06];

var listeNom = ['Tiavina', 'Titi', 'Tia'];

var list = ["car", "boat", "plane"];

// On peut spécifier aussi le type
List<int> notes = [12, 15, 06];

// On peut obtenir la longueur d'une liste : .length    , et on peut accéder une valeur d'une liste en utilisant son indice []

var ville = ['Tana', 'Tamatave', 'Fianara'];
var tamatave = ville[1]; // "Tamatave"
var longueur = ville.length;

// On peut créer une liste qui est constante de temps de compilation
// exemple
var constantList = const [1, 2, 3];

// Ensembles : une collection non ordonnée
var planete = {'Terre', 'Uranus', 'Mars', 'Pluton', 'Jupiter'};
Set<String> dev = {'Rust', 'Flutter', 'Mobile'};

// On  peut créer un ensemble vide, en utilisant {}
var ensembleVides = <String>{};

Set<String> ensembleVides2 = {}; // Même chose que ce ensembleVides

// On peut ajouter des éléments à un ensemble existant en utilisant le add() ou addALl()
var planetes = <String>{};

// On peut créer une ensemble qui est une constante de temps de compilation
final constanteSet = const {'cristiano', 'messi', 'neymar'};

// Map (ou une sorte de cartes)
// est une objet qui associe des clés et des valeurs
var gifts = {'first': 'partridge', 'second': 'turtledoves'};

var nobleGases = {2: 'helium', 10: 'neon'};

// On peut spéficier le type
var gifts2 = Map<String, String>();

var nobleGases2 = Map<int, String>();

// On peut ajouter d'un nouveau couple de valeur de clé à une carte existante
var gifts3 = {'first': 'partridge'};

// On peut récuperer une valeur d'une carteà l'aide de l'indice []
Map<String, int> note = {'Math': 18, 'Pc': 15};

// Si on cherche une clé qui ne l'est pas, on obtient null

// On peut savoir le nombre de clé valeur dans un map avce .lenght
var longueurCleValeurMapNote = note.length;

// On peut créer une map qui est une constante de temps de compilation avec const
final constantMap = const {
  2: 'Helium',
  10: 'Neon',
  18: 'Argon',
};

// Opérateurs de diffusion
// On peut utiler l'opérateur de propagation(...), exemple
var list1 = [1, 4, 6, 10];
var list2 = [0, ...list1]; // Ici on ajoute le list1 dans list2

// Si c'est null
var list4 = null;
var list5 = [0, ...?list4];

// Opérateur de flux contrôle
// On peut construire des collections à l'aide de conditions if et for
var promoActive = false;
var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

var login = 'Manager';
// Dart supporte if-case aussi
var nav2 = [
  'Home',
  'Furniture',
  'Plants',
  if (login case 'Manager') 'Inventory'
];

// On peut utilser pour
var listOfInts = [2, 4, 6];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
void main() {
  for (final note in notes) {
    print(note);
  }

  print(tamatave);
  print('Longueur de la liste ville est ${longueur}');

  print(constantList[1]);

  // On ajoute des éléments à la liste elements
  planetes.add('Venus');
  planetes.addAll(planete);

  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';

  gifts3['fourth'] = 'calling birds';

  // Récuperation du note Math
  var mathNote = note['Math'];
  print('Note mathématique : ${mathNote}');
  print(longueurCleValeurMapNote);

  print(listOfStrings);
}
