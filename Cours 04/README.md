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

#### Combiner les conditions

Il est possible de combiner plusieurs conditions, et de n'exécuter le code que si ces conditions son partiellement ou toutes remplies.

Les opérataeurs sont les suivants :

- ET (&&)
- OU (||)


```
if( condition ) {
	// Mon action si la condition est remplie
} else {
	// Mon action si la condition n'est PAS remplie
}
```

#### Négation

Le signe`!` est le symbole de négation dans les condtions.

```
if( i != 2 ) {
	// Mon action si i n'est pas égal à 2
} else {
	// Mon action si i est égal à 2
}
```

Dans une combinaison de conditions, la négation peut-ètre utilisé de la manière suivante :

```
if( i > 50  && (i != 55) ) {
	// Mon action si i est plus grand que 50 et n'est pas égal à 5
} else {
	// Mon action dans le cas contraire
}
```

Plus d'information ici : [http://wiki.t-o-f.info/Processing/Condition](http://wiki.t-o-f.info/Processing/Condition)

### 2 - Animation de base (frameCount, cos et sin)

#### frameCount

Le total de *frames* rendus depuis le lancement du programme. Dans un sketch à 30 *frames* par seconde par exemple, *frameCount* aura une valeur de 30 après une seconde, de 60 après 2 secondes, de 90 après 3 secondes, ainsi de suite...

Plus de détails ici : [processing.org](http://processing.org/reference/frameCount.html).

#### millis()

C'est une fonction qui se rapproche de *frameCount*. Elle retourne le temps en millisecondes depuis le début du programme.

Donc si le programme est exécuter depuis une seconde, la valeur de `millis()` sera de 1000.

#### sin et cos (oscillation)

Ces deux fonctions servent à animer des objets d'une manière «organique». Ce sont les fonctions de base pour tout mouvement qui se rapproche de la nature.

**sin**

![image](http://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Sinus.svg/400px-Sinus.svg.png)

**cos**

![image](http://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Cosinus.svg/400px-Cosinus.svg.png)

Comme ces deux fonnctions retournent une valeur entre -1 et 1, il est très facile de les faire osciller sur une distance fixe, en les mutlipliant simplement par la valeur désirée.

```
float posX = sin(frameCount/30.0)*100 + 100;
rect(posX, 100,100,100);
```

**À remarquer :** L'utilisation de `30.0` plutôt que `30`. Cela force la division à se faire avec des virgules, et donc de conserver les décimales.

En combinant *sin* et *cos*, nous pouvons déplacer un objet autour d'un cercle.

```
float posX = sin(frameCount/30.0)*100 + 100;
float posY = cos(frameCount/30.0)*100 + 100;
rect(posX, posY,100,100);
```

Ma page préférée sur wikipédia : [http://fr.wikipedia.org/wiki/Fonction_trigonom%C3%A9trique](http://fr.wikipedia.org/wiki/Fonction_trigonom%C3%A9trique)

Plus de détails ici : [http://wiki.t-o-f.info/Processing/Oscillation](http://wiki.t-o-f.info/Processing/Oscillation)

### 3 - Modulo (%)

Les restants d'une division! Il permet (entre autres) de répéter en boucle une animation. Le plus facile pour comprendre les modulos est d'y aller avec des exemples :

```
0%3 = 0
1%3 = 1
2%3 = 2
3%3 = 0
4%3 = 1
5%3 = 2
6%3 = 0
```

Avec des nombres plus grands, la logique est la même : 

```
33%30 = 3
35%30 = 5
63%30 = 3
```

Plus d'infos ici : [http://processing.org/reference/modulo.html](http://processing.org/reference/modulo.html)

## Atelier

À partir d'un nouveau sketch :

- Créer une image à l'aide de fonctions qui on des paramètres et des conditions. Par exemple, `drawFinger(1)`, `drawFinger(2)`, etc.
- Animer des éléments en boucle en utilisant *frameCount* et un modulo.
- Animer des éléments en oscillation, c'est-à-dire avec *sin* et *cos*.
