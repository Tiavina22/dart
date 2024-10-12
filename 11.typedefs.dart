// Typedef (alias d'un type) est une manière concise de se référer à un type. Exemple
typedef IntList = List<int>;
IntList il = [1, 2, 3];

// le typedef peut avoir des paramètres de type
typedef ListMapper<X> = Map<X, List<X>>;
Map<String, List<String>> m1 = {}; // Verbose
ListMapper<String> m2 = {}; // Same thing but shorter and clearer.

// on peut faire du typedef aussi avec des fonctions
typedef Compare<T> = int Function(T a, T b);

int sort(int a, int b) => a - b;

void main() {
  assert(sort is Compare<int>); // True
}
