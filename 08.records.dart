// Records ou enregistrements: type anonyme, immuable, agrégé

// Syntaxe : (sont des listes délimitées par des virgules)
var record = ('first', a: 2, b: true, 'last');

// swap c'est une fonction qui prends en paramètres deux entiers enregistrer comme record, et retourne deux entiers qui est l'inverse de a,b en b,a
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

// Record type annotaion in a variable declaration
(String, int) record2 = ('A string', 123);

// On peut faire ça aussi
({int a, bool b}) record3 = (a: 12, b: true);

// la même chose
({int c, int d}) recordAB = (c: 1, d: 2); // ({int c, int d}) recordAB = (1,2);

// On peut accéder les valeurs de records :
var record4 = ('first', w: 40, z: false, 'last');

(num, Object) pair = (3, "mada");

void main() {
  print(record4.$1); // first
  print(record4.w); // 40
  print(record4.z); // false
  print(record4.$2); // last

  var pair1 = pair.$1;
  var pair2 = pair.$2;
}

// Retours mutliples
// records permettent aux fonctions de retourner plusieurs valeurs regroupées

(String name, int age) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};


// On peut l'utiliser : var (name, age) = userInfo(json);
/* Equivalent to:
  var info = userInfo(json);
  var name = info.$1;
  var age  = info.$2;
*/