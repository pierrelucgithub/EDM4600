EDM4600 - Cours 2
=======

Références, documentations et téléchargements pour le cours 2.

Le cours a lieu le 17 janvier 2014.

## Définitions

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



## Atelier

L'objectif de l'atelier et de créer un paysage

### 1 - Coquille de base

Le modèle de base de tout *sketch* Processing:


```java
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

### 2 - Les formes

La façon la plus simple d'interagir avec votre 

http://wiki.t-o-f.info/Processing/Formes

### 3 - La console

![La console](https://dl.dropboxusercontent.com/u/1052827/EDM4600/cours2%20-%20console.png)

### 4 - Les variables

http://wiki.t-o-f.info/Processing/Formes

