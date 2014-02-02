EDM4600 - Cours 5
=======

Références, documentations et téléchargements pour le cours.

Le cours a lieu le 7 février 2014.

## Concepts

### 1 - Interaction avec la souris

L'interaction avec la souris se fait à l'aide de 3 variables :

- variable `mouseX`
- variable `mouseY`
- variable `mousePressed`

Et de 3 fonctions :

- fonction `mousePressed()`
- fonction `mouseReleased()`
- fonction `mouseMoved()`

Les variables sont accessibles partout dans le code.

Les fonctions s'utilisent un peu comme `setup()` et `draw()` : 

```
void mouseMoved() {
	// Mes actions ici
}
```

Voir les notions d'événements pour mieux comprendre les fonctions.

#### Zone interactive

Pour créer une zone interactive, il suffit de combiner les fonctions et les variables précédentes avec des conditions appropriées.

```
if ( pointX > gauche && pointX < droite && pointY > haut && pointY < bas ) {
	// le point est dans le rectangle
} else {
	// le point n'est pas dans le rectangle
}
```

Plus d'information ici : [http://wiki.t-o-f.info/Processing/ZoneInteractive](http://wiki.t-o-f.info/Processing/ZoneInteractive)

### 2 - Interaction avec le clavier

L'interaction avec la souris se fait principalement à l'aide d'une variable :

- variable `keyCode`

Et de 2 fonctions :

- fonction `keyPressed()`
- fonction `keyReleased()`

Les fonctions s'utilisent un peu comme `setup()` et `draw()`, et on y ajoute la plupart du temps une condition, pour déterminer la touche pressée : 

```
void keyPressed() {
	println(keyCode);
	if(keyCode == 32) {
		// Mes actions ici
	}
}
```

### 3 - Notions d'événements

Les événements sont une manière d'optimiser le code, afin d'exécuter un bloc de code à un moment spécifique, plutôr qu'à chaque *frame* en utilisant la fonction *draw()*.

Ainsi, le code qui est dans la fonction `mouseMove()` n'est exécuter que lorsque la souris est bougée.

#### Librairies utilisants les notions d'événements :

Processing utilise la notion d'événement pour les fonctions `mousePressed()`, `mouseReleased()`, `keyPressed()`, etc. Plusieurs autres libraires utilisent aussi cette approche.

- [Ani](http://www.looksgood.de/libraries/Ani/) : pour faire des transitions facilement
- [oscP5](http://www.sojamo.de/libraries/oscP5/) : communication entre deux ou plusieurs ordinateurs via OSC.
- Serial (inclus dans processing) : communication série, avec un Arduino par exemple.
- [SimpleOpenNI](https://code.google.com/p/simple-openni/) : utilisation de la Kinect
- WebsocketP5 : communication avec un navigateur

## Atelier

- Interagir avec le clavier et la souris.
- Avoir une *zone interactive* (bouton) qui change un comportement du sketch.
- Pouvoir utiliser la barre d'espace et une autre touche pour déclencher une action.
- En suppléments : utiliser la librairie ANI avec un *callback* pour mieux comprendre les notions d'événement.

