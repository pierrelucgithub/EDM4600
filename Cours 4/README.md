EDM4600 - Cours 4
=======

Références, documentations et téléchargements pour le cours .

Le cours a lieu le 7 février 2014.

## Concepts

### 1 - Conditions

L'instruction conditionnelle if() teste la condition placée entre parenthèses et dirige le flux du code selon le résultat.

#### if

```
if( condition ) {
	// Mon action si la condition est remplie
}
```

#### if / else

```
if( condition ) {
	// Mon action si la condition est remplie
} else {
	// Mon action si la condition n'est PAS remplie
}
```

Une condition est souvent une comparaison :

- d'égalité (==)
- de non égalité (!=)
- plus grand que (>)
- plus grand ou égal (>=)
- plus petit que (<)
- plus petit ou égal (<=)

Plus d'information ici : [http://wiki.t-o-f.info/Processing/Condition](http://wiki.t-o-f.info/Processing/Condition)

### 2 - Animation de base (frameCount, cos et sin)

#### frameCount

Le total de frames rendus depuis le lancement du programme. Plus de détails ici : [processing.org](http://processing.org/reference/frameCount.html).

### 3 - Modulo

Les restants d'une division!

Plus d'infos ici : [http://processing.org/reference/modulo.html](http://processing.org/reference/modulo.html)

## Atelier


- Créer une image à l'aide de fonctions qui on des paramètres et des conditions. Par exemple, `drawFinger(1)`, `drawFinger(2)`, etc.
- Animer des éléments en boucle en utilisant *frameCount* et un modulo.
