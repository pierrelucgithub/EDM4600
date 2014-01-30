EDM4600 - Cours 6
=======

Références, documentations et téléchargements pour le cours .

Le cours a lieu le 14 février 2014.

## Concepts

### 1 - Tableau multidimensionnel

Les tableaux peuvent être multidimensionnels :

```
float[][] monTableau1 = new float[10][10] ;
```

Dans l'exemple précédent, le tableau contient 100 valeurs (10x10), qui peuvent être accédées de la manière suivante :

```
float[][] monTableau1 = new float[10][10] ;
monTableau1[5][6] = 9.3;
```

Ces tableaux sont souvent utilisés pour rassembler des valeurs relatives à un même objet. Par exemple, la position :

```
float[][] monTableau1 = new float[3][2];
monTableau1[0][0] = 10;
monTableau1[0][1] = 10;
monTableau1[1][0] = 30;
monTableau1[1][1] = 30;
monTableau1[2][0] = 40;
monTableau1[2][1] = 10;

for(int i=0; i<monTableau1.length; i++) {
	rect(monTableau1[i][0], monTableau1[i][1], 10, 10);
}
```

#### Où on s'en va avec tout ça...?

En classant les données de cette manière, nous nous rapprochons d'un des objectifs du cours, c'est-à-dire la programmation orientée objet (OOP).

Dans la programmation OOP, tous les éléments sont regroupés en classe, un peu de la même manière que nous avons rassemblé nos positions x et y dans une seule entrée du tableau précédemment.

### 2 - Minuterie

Il existe plusieurs manières de déclencher des actions. Au cours dernier, nous avons utilisé une approche d'évémements à l'aide des fonctions `mousePressed()`, etc.

Une façon plus rudimentaire de le faire est d'utiliser une minuterie, qui se base sur le temps (`millis()`) ou sur les *frames* (`frameCount`).

```
int timeStamp;
int interval;

void setup() {
	size(200, 200);
	smooth();
	interval = 2000;
}

void draw() {
	background(0);
	if ( millis() - timeStamp >= interval ) {
		timeStamp = timeStamp + interval;
		// Mon action
	}
}
```

Plus d'informations ici : [http://wiki.t-o-f.info/Processing/Minuterie](http://wiki.t-o-f.info/Processing/Minuterie)


## Atelier
- Utiliser un tableau multidimensionnel pour enregistrer les positions d'objets. Afficher ces objets à leur position respective en utilisant une boucle *for*.
- Défi supplémentaire : si votre travail 1 était bien fait, pourquoi ne pas utiliser une partie de votre personnage, et de la dessiner à répétition!
- Déclencher des transformations sur certains objets selon une minuterie.
