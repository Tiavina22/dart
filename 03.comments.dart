// Commentaires
// Dart peut supporter : seul ligne commentaires, multi-line et docummentations

// Single-line comments
// Syntaxe : // Votre commentaire en seul ligne
void singleLigneComment() {
  // Commentaire en seule ligne
}

// Multi-line comments
// Syntaxe : Begin with /* and ends with */
void multiLigneComment() {
  /*
    Ceci est un(e) je ne sais pas si un ou une commentaire
    Commentaire encore
  */
}

// Documentation comments
// begin with /// or /**
// vous pouvez référer des aux classes, méthodes, variables de niveau supérieur, fonctions ... en utilisant des crochets
/// C'est une classe pour construire une voiture
/// une voiture devrait avoir un [name], et elle pourra [demarrer]
class Voiture {
  String? name;

  void demarrer(name) {
    print('Voiture $name a démarrer');
  }
}
