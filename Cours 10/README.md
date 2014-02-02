EDM4600 - Cours 10
=======

Références, documentations et téléchargements pour le cours.

Le cours a lieu le 14 mars 2014.

## Concepts

### 1 - OOP

xxx


### 2 - Classes

xxx

Dans l'exemple suivant, nous créons une classe `Carre` qui contient la position et la couleur d'un carré, et qui permet de le dessiner facilement :

```
class Carre() {

	// Définition des variables contenus dans la classe
	float x = 0.0;
	float y = 0.0;
	float s;
	color c;
	
	
	// Constructeur (appelé lorsqu'on fait new)
	Carre(color _couleur, float size) {
		c = couleur;
		s = size;
	}
	
	// Fonction personnalisée, que l'on doit appeler manuellement
	void draw() {
		noStroke();
		fill(c);
		rect(x,y,s,s);
	}
	
}
```

Ensuite, nous pouvons créer des *instances* de cette classe :


```
color red = color(255,0,0);
Carre monCarre1 = new Carre(red)
```

Comme pour n'importe quelle variable, nous définissons d'abord le type de variable (*Carre*), son nom (*monCarre1*) et lui attribuons une valeur (avec le mot-clé *new*).

Ensuite, nous pouvons appeler les fonctions ou les variables qu'il contient à l'aide du caractère `.` (point) :


```
monCarre1.x = 10.0;
monCarre1.y = 200.0;
monCarre1.draw();
```


Pour faciliter le l'organisation du code, les classes sont souvent créées dans de nouveaux onglets :

![image](https://dl.dropboxusercontent.com/u/1052827/EDM4600/cours10%20-%20onglets.png)


## Atelier