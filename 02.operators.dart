/*
unary postfix : expr++, expr--, (), [], ?[], ., ?., !
unary prefix : -expr, !expr,  ~expr, ++expr, --, expr, await expr
multiplicative : * , / , % , ~/
additive : + -
shift : << , >>, >>>
bitwise AND : &
bitwise XOR : ^
bitwise OR : |
relational and type : >= , > , <= , < , as , is, is!
equality : == !=
logical AND : = &&
logical OR : ||
if-null : ??
conditional : expr1 ? expr2 : expr3
cascade : .. ? ..
assignement : = , *=, /=, +=, &= , ^=
spread : ... ...?
*/

// J'explique un peu les : bitwise AND : & bitwise XOR : ^ bitwise OR : |
// 1 - Bitwise AND & : effectue une comparaison ET bit à bit entre deux entiers, si les deux bits corresponds ça donne 1, et si non 0
int a = 6; // en binaire 0110
int b = 3; // en binaire 0011
// 0 => 0 = 0, 0 => 1 = 0, 1 => 1 = 1, 1 => 0 = 0
// == 0010 ce qui donne 2

// 2 - Bitwise XOR ^ : XOR bit à bit entre deux entiers, le résultat est 1 si un seul bits correspondants dans les opérandes est 1, si non 0
// 0 => 0 = 0, 1 => 0 = 1,  1 => 1 = 0, 0 => 1 = 1, 1 0 ça donne 1, 0 1 ça donne 1
// == 0101 ce qui donne 5

// 3 - Bitwise OR | : effectue une opération ou bit à bit entre deux entiers, le résulat est 1 si au moins un des bits correpondants dans les opérandes est 1, sinon 0
// 0 0 = 0, 0 1 = 1, 1 0 = 1, 1 1 = 1
// == 0101 ce qui donne 7

void main() {
  // Bitwise AND &
  int resultat = a & b;
  print(resultat); // ça donne 2 car 0010 en binaire

  // Bitwise XOR ^
  int result = a ^ b;
  print(result); // ça donne 5 car 0101 en binaire

  // Bitwise OR |
  int res = a | b;
  print(res); // ça donne 7 car 0111 en binaire

  // type test operators
  print(employee.name);

  employee.name = "Nellye";
  print(employee.name);

  // as
  // (employee as Person).name = "Ovaina ilay anarana"; ça donne une erreur car employee n'est pas une personne, c'est une nonPersonne
  (employee as NonPerson).name =
      'Mety'; // ça marche car employée est une nonPersonne ici
  print(employee.name);

  // is
  if (employee is NonPerson) {
    print('Yes');
  } else {
    print('NOn');
  }

  exampleForShift();
}

// Resumer : AND les deux bits doivent être 1 pour donner 1
// XOR : si un seul des bits est 1, ça donne 1
// OR : si au moins un des bits est 1, ça donne 1

// Arithmetic operators
/*
+ add
- substract
-expr : negation
* multiply
/ division
~/ dision, qui retourne un entier
% : modulo
*/

// Postfix et prefix
/*
++var
va++
--var
var--
*/

// Equality and relational operators
/*
== egalité
!= difference
> : supérieur
< : inférieur
>= supérieur ou égale
<= inférieur ou égale
*/

// Type test operators
// as, is, is!
/*
as : typecast
is : true si le type de l'objet est spécifié
is! : false si le type de l'objet est non spécifié
*/

class Person {
  String name = "Tiavina";

  Person({required this.name});
}

class NonPerson {
  String name = "Tiavina";
  NonPerson({required this.name});
}

var employee = NonPerson(name: "Titi");

// Assignement operators
// a = valeur; // assigner valeur à a
// Assigner une valeur à b si b est null ! b ??= value;

// Opérateur logiques
// !expr : négation
// || OR
// && AND
void logiqueOperator() {
  var done = true;
  var col = 1;
  if (!done && (col == 0 || col == 3)) {
    print("Do Sometĥing");
  }
}

// Bitwise and shift operators
/*
& and
| or
^ Xor
~expr
<< shift left
>> shift right
>>> unsigned shift right
*/

void exampleForShift() {
  int number = 3; // en binaire = 00000011
  int resu = number << 2; // Décale les bits de 2 positions vers la gauche
  print(resu); // ça donne 12 car en binaire 00001100

  int number2 = 16; // en binaire 00010000
  int resu2 = number >> 2; // décale les bits de 2 positions vers la droite
  print(resu); // ça donne 4 car 00000100 en binaire

  int number3 = -8; // en binaire 11111000
  int resu3 = number3 >>>
      2; // Décale les bits de 2 positions vers la droite, remplit avec des 0
  print(resu3); // ça donne un grand entier positif
}

// Conditional expressions
var isPublic = true;
var visiblite = isPublic ? 'public' : 'private';

String playerName(String? name) => name ?? 'Guest';

// Cascade notation
// var paint = Paint()
//   ..color = Colors.black
//   ..strokeCap = StrokeCap.round
//   ..strokeWidth = 5.0;