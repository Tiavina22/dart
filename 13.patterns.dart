// Que fonts les patterns
/*
un motif peut correspondre à une valeur, à une valeur, ou aux deux, en fonction du contexte et de la forme du motif.
l'appariement de motifs vous permet de vérifier si une valeur donnée:
  -  A une certaine forme.
  -  C'est une certaine constante.
  -  C'est égal à autre chose.
  -  A un certain type.
*/
// Matchage
int number = 1;

const a = 'a';
const b = "c";
Object obj = [a, b];

// destruction
var numList = [1, 2, 3];

void main() {
  // constant pattern matches if 1 == number
  switch (number) {
    case 1:
      print("one");
  }

  // motifs variables ou des motifs constants
  switch (obj) {
    case [a, b]:
      print('$a $b');
  }

  var [c, e, f] = numList;
  print(c + e + f);
  print(e);

  var list = numList;

  // On peut imbriquer n'importe quelle type de motif
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }

// Déclaration de variables
  var (w, [x, y]) = ('str', [1, 2]);

  // affecation à la variable
  var (i, j) = ("left", "right");
  // swap
  (i, j) = (j, i);
}
