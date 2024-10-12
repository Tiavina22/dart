// Boucle
// permettent de répéter des actions un certains nombres de fois ou jusqu'à une condition soit remplie

// boucle for
// utilisée lorsque vous savez à l'avance combien de fois vouzs voulez itérer

// Boucle for avec listes

// Boucle for in

// BOucle while
// répète une action tant qu'une condition est vraie. Si la condition est fausse dès le début, la boucle ne s'exécute pas

// boucle do-while
// Similaire à la boucle while, mais elle garantit que le corps de la boucle est exécuté au moins une fois

// boucle infinie

// mot-clé break
// sert à interrompres prématurément une boucle

// continue
// permet de sauter le reste de l'itération actuellle et de passes à la suivante

// Boucle imbriquée

// BOucle avec des collections comme set ou map
// for in et forEach

// Boucle avec await dans des opération asynchrones
Stream<int> fluxNombres() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Boucle sur des intervalles

Future<void> main() async {
  // Syntaxe boucle for
  for (int i = 0; i < 5; i++) {
    print('Itération numéro $i');
  }

  // boucle for avec listes
  List<String> fruits = ['Pommes', 'Fraises', 'Banane', 'Orange'];

  for (int i = 0; i < fruits.length; i++) {
    print(fruits[1]);
  }

  // Boucle for in  itère directement à travers chaque élément de la collection
  List<String> animaux = ['Chat', 'Chien', 'Lapin'];
  for (var animal in animaux) {
    print(animal);
  }

  // Boucle while
  int compteur = 0;
  while (compteur < 5) {
    print('compteur : $compteur');
    compteur++;
  }

  // boucle do while
  do {
    print('Compteur : $compteur');
    compteur++;
  } while (compteur < 5);

  // boucle infinie
  while (true) {
    print('BOucle infinie : $compteur');
    compteur++;

    if (compteur == 10) {
      break; // Arrête la boucle apres 10 itérations
    }
  }

  // continue
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // saute l'itération si i est un nombre pair
    }
    print(i); // Affiche uniquement les nombres impaires
  }

  // Boucle imbriquée
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('i = $i , j = $j');
    }
  }

  // Parcourir un set
  Set<int> nombres = {1, 2, 3, 4};
  for (var nombre in nombres) {
    print(nombre);
  }

  // Parcourir un map
  Map<String, String> capitales = {
    'France': 'Paris',
    'Italie': 'Rome',
    'Japon': 'Tokyo'
  };

  for (var capitale in capitales.entries) {
    print('${capitale.key}, : ${capitale.value}');
  }

  // itération avec forEach
  List<int> nombres2 = [1, 2, 3, 4, 5];
  nombres2.forEach((nombres) {
    print(nombres * 2);
  });

  // boucle avec await
  await for (var nombre in fluxNombres()) {
    print('Nombre reçu : $nombre');
  }

  // BOucle sur les intervalles
  for (var i in Iterable.generate(5)) {
    print(i);
  }
  // Iterable.generate(5) // génère 0 à 4
}
