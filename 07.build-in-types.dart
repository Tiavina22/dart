// Les différentes types intégrés (variables) du dart

// Nombres
// en int et en double, int ne dépasse pas du 64 bits ( comprise entre -2^63 et 2^63-1
// double (nombres flottants de 64 bits), int et double sont de types enum

var x = 1;
int y = 2;

var pi = 3.14;
double piMath = 3.14;

var hex = 0xDEADBEEF;
var expo = 1.42e5;

num z = 1;

num w = 3.14;

double note = 15; // équivaut aux double note = 15.0;

// On peut transformer un string en nombre
// string en entrier
var one = int.parse('15');

// string en double
var onePointOne = double.parse('15.5');

// int en string
String oneAsString = 12.toString();

// double en string
String piAsString = 3.14159.toStringAsFixed(2); // 3.14

void main() {
  assert(one == 1);
  assert(onePointOne == 15.5);
  assert(oneAsString == '12');
  assert(piAsString == '3.14');
}

// String : détient une séquence d'unité de code UTF-8
var s1 = 'Single quotes';
String s2 = 'Double quotes';

var s3 = 'It\'s easy ti escape the string delimiter';
var s4 = "It's even easier to use the other delimiter";

// On peut mettre une variable dans un string en utilisant ${variable}
var s5 = 'It\'s easy and ${s3}';

// On peut créer une chaîne multilignes,
var multi = '''
  You can create
  multi-line strings like this one
''';

var also = """
  This is also
  a multi-line string.
""";

// Boolean
// Soit false ou true (bool)
var bogosy = false;
var jiroTapaka = true;

// Symbole : une manière de référencer des noms (comme des méthodes, variables, ...)
Symbol sym = Symbol("nameSymbole");

Symbol sym2 = #nameSymbole;
