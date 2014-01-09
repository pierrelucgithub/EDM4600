EDM4600 - Cours 2
=======

Références, documentations et téléchargements pour le cours 2.

Le cours a lieu le 17 janvier 2014.

## Définitions de base

### Le sketch

Un projet créé dans Processing s'appelle un sketch.

Le sketch est enregistré sur le disque dur de l'ordinateur sous la forme suivante:

- un dossier portant le nom du projet. À l'intérieur de ce projet se trouve:
	- un fichier texte ".pde" qui contient le code et qui porte le même nom que le dossier,
	- un dossier data qui est créé lorsque le projet utilise des médias,
	- un dossier applet qui est créé lorsque le projet est exporté pour le Web.

Source : [http://wiki.t-o-f.info/Processing/Introduction](http://wiki.t-o-f.info/Processing/Introduction)

### Le sketchbook

Le sketchbook est un dossier spécial (créé par Processing s'il n'existe pas déjà) dans lequel, par défaut, les sketchs sont sauvés. Il peut être modifié pour n'importe quel autre dossier à partir de l'item preferences du menu File.

Source : [http://wiki.t-o-f.info/Processing/Introduction](http://wiki.t-o-f.info/Processing/Introduction)

## Concepts

### 1 - Coquille de base

Le modèle de base de tout *sketch* Processing:


```
void setup() {

  // La taille de la fenetre.
  size(960, 540);

  // Le nombre d'images par seconde.
  frameRate(30); 

  // Lisser les formes dessinées.
  smooth(); 
}

void draw() {

  // Remplir l'arriere-plan d'une teinte de gris.
  background(127);
}
```

Les lignes qui débutent par «//» sont des **commentaires**, c'est-à-dire des  

**setup()** et **draw()** sont deux fonctions spéciales:

- Le bloc de code encapsulé par la fonction **setup()** ne s'exécute qu'une seule fois au démarrage du programme;
- Le bloc **draw()** est répété jusqu'à la terminaison du programme.
 
### 2 - Les coordoonées

Un point deux-dimensionnel (2D) est composé d'une valeur x et y.

En programmation, le point supérieur gauche est toujours à (0,0), c'est-à-dire que sa valeur X est 0 et sa valeur Y est zéro.

![](https://dl.dropboxusercontent.com/u/1052827/EDM4600/cours2%20-%20coord.jpg)

La valeur de X augmente lorsque nous allons vers la gauche, et la valeur de Y augmente lorsque nous allons vers le bas.

### 3 - Les formes

La façon la plus simple d'interagir avec un programme, c'est de lui demander d'afficher un éléments graphique.

Utilisez les fonction décrite ici pour dessiner des formes :

- [point(x,y)](http://processing.org/reference/point_.html)
- [line(x1,y1,x2,y2)](http://processing.org/reference/line_.html)
- [rect(x,y,largeur,hauteur)](http://processing.org/reference/rect_.html)
- [triangle(x1,y1,x2,y2,x3,y3)](http://processing.org/reference/triangle_.html)
- [quad(x1,y1,x2,y2,x3,y3,x4,y4)](http://processing.org/reference/quad_.html)
- [ellipse(x,y,largeur,hauteur)](http://processing.org/reference/ellipse_.html)
- [arc(x,y,largeur,hauteur,début,fin)](http://processing.org/reference/arc_.html)
- [beginShape()](http://processing.org/reference/beginShape_.html) / [endShape()](http://processing.org/reference/endShape_.html) / [vertex(x, y)](http://processing.org/reference/vertex_.html)

Plus d'informations ici : [http://wiki.t-o-f.info/Processing/Formes](http://wiki.t-o-f.info/Processing/Formes)

### 4 - Les couleurs

La plupart du temps, nous utilisons la notation de couleur RGB, c'est-à-dire que les valeurs qui se succèdent sont la quantité de ROUGE, de VERT, puis de BLEU.

Les valeurs de couleurs sont comprises entre 0 et 255, soit un total de 256 possibilités par couleur.

Avec Processing, il faut définir la couleur d'un élément avec les function *fill()* et *stroke()*.

```
fill(255, 0, 0);
stroke(0, 0, 255);
rect(30, 20, 55, 55);
```

Toutes les formes qui suiveront prendrons alors ces couleurs.

Nous pouvons enregistrer la valeur d'une couleur dans une variables (voir la section 6)


```
// Définir une variable 'c' de type 'color'
color c; 

// Attibuer une valeur à 'c'
c = color(50, 55, 100);

// Dessiner un carré avec la valeur de 'c' comme couleur de remplissage
fill(c);
rect(30, 20, 55, 55);

```

Plus d'informations ici : [http://wiki.t-o-f.info/Processing/Couleurs
](http://wiki.t-o-f.info/Processing/Couleurs) et ici [processing.org](http://processing.org/reference/fill_.html)

### 5 - La console

La console est utilisé pour afficher des messages de votre choix, on lire les messages d'erreurs retournés.

![La console](https://dl.dropboxusercontent.com/u/1052827/EDM4600/cours2%20-%20console.png)

Vous pouvez afficher des éléments dans la cosole avec la fonction *println* :

```
println("Hello World");
```

### 6 - Les variables

Lorsque vous créez des variables, n'oubliez pas:

- de respecter la convention des majuscules,
- de leur donner un nom descriptif,
- et de leur associer un type approprié.

La création d'une variable se fait en deux étapes: sa déclaration et ensuite son assignation. Ces deux étapes peuvent s'effectuer simultanément. Sinon l'assignation peut être effectuée après la déclaration.

Le signe égal (=) permet d'assigner une valeur à une variable.

```
// Déclaration et assignation dans une seule ligne
int count = 50;

// Déclaration et assignation en deux temps
int count;
count = 50;
```

Source (et plus d'informations) : [http://wiki.t-o-f.info/Processing/Variable](http://wiki.t-o-f.info/Processing/Variable)

#### Les types de variables de base

- int : abbréviention de *integer*, ce sont des nombres entiers.
- float : ce sont des nombres à virgules, offrant plus de précision.
- boolean : pouvant prendre la valeur de *true* ou *false*, on les appelle binaires, 
- String : un chaîne de caractères (une lettre, un mot, un phrase, etc.)
- color : représentation d'une couleur (*Processing* seulement)

#### String 

Il faut noter que le texte en programmation est utilisé pour nommer les variables. Pour indiquer que nous parlons de la valeur d'une chaîne de caractères, nous devons la mettre entre guillemets.

```
String maVariable = "mon valeur de chaîne de caractères";
```

## Atelier

L'objectif de l'atelier et de créer un paysage figuratif avec les fonction des dessins

1. Commencer avec la coquille de base.
2. Ajouter des formes pour créer un paysage dans la fonction *draw()*.
3. Utiliser au moins trois variables : 
	1. une variable de type *Color* pour enregistrer une couleur
	2. une variable de type *int* pour enregister la position d'un élément
	3. une variable système telle que *width*, *height*, *mouseX* ou *mouseY*.
4. Sauf pour les variables de système, les valeurs des variables doivent être attribuer dans la fonction *setup()*.
