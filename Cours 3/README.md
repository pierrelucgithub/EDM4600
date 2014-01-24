EDM4600 - Cours 3
=======

Références, documentations et téléchargements pour le cours 3.

Le cours a lieu le 24 janvier 2014.

## Définitions de base

### Un tableau

Un tableau, plus communément appelé *array* en programmation, est une série de valeur du même type, stocké dans une seule variable. Les tablaux sont particulièrement utiles pour les boucles itératives (*for*).

### Une boucle

Un tableau, plus communément appelé *array* en programmation, est une série de valeur du même type, stocké dans une seule variable. Les tablaux sont particulièrement utiles pour les boucles itératives (*for*).

Plus d'informations : [http://wiki.t-o-f.info/Processing/Tableau](http://wiki.t-o-f.info/Processing/Tableau)

## Concepts

### 1 - Tableau

Il arrive très souvent qu'une même action doit être appliquée à plusieurs variables. Pour traiter ces variables en lots (*batch)*, nous devons les stocker dans une sorte de liste. Nous faisons alors appel à des **tableaux** (*arrays*).

Un tableau est simplement une liste de variables auquel nous avons attribuer un numéro d'identification, plutôt qu'un nom.

Tout comme pour les variables, il faut déclarer un tableau en lui donnant un nom et un type. Nous devons aussi déterminer combien d'éléments conitennent ce tableau


#### Déclaration

Pour créer un tableau contenant 10 variables de nombres à virgule (*float*), il faut utiliser le code suivant:

```
float[] monTableau1 = new float[10] ;
```

De la même manière, pour créer un tableau contenant 100 variables de nombres entiers (*int*), il faut utiliser le code suivant:

```
int[] monTableau1 = new int[100] ;
```

#### Attribuer des valeurs

Reprenons l'exemple du tableaux de 10 variables de nombres à virgule (*float*).

```
float[] monTableau1 = new float[10] ;
```

Les 10 variables contenues dans ce tableau sont numérotées de 0 à 9. Pour changer la valeur d'une variable, on utilise la même méthode qu'avec les variables, en identifiant quel entrée du tableau nous voulons modifier à l'aide de l'index (dans ce cas ci, 0 à 9) :

```
monTableau1[2] = 35;
monTableau1[4] = 55;
```

Plus d'informations : [http://wiki.t-o-f.info/Processing/Tableau](http://wiki.t-o-f.info/Processing/Tableau)

### 2 - Les boucles

Le boucles peuvent être utiliser pour répéter une opération un certain nombre de fois.

#### Boucle *for*

Ce code répéte la même action à trois reprises, comptant de 0 à 2 dans la console :

```
for(int i=0; i<3; i++) {
	println("Je compte " + i);
}
```
En regardant l'exemple ci-dessus, on peut voir que 3 éléments séparés par des ";" consituent la boucle :

- **initialisation** : Here, a variable is declared and initialized for use within the body of the loop. This variable is most often used inside the loop as a counter.
- **condition** :  condition qui est vérifiée avant chaque exécution de la boucle. La boucle ne s'exécute que si la condition est évaluée true- **incrementation** : instruction a effectuer après chaque exécution de la boucle qui avec la condition, limite le nombre de répétitions de la boucle.

*Pourquoi 0 à 2 (plutôt que 1 à 3)?* : nous utilisons presque toujours des *0-based index*, c'est-à dire des index où l'élément 0 existe. Cela facilite certaines opérations et optimise le code.

#### Boucle *while*

Le boucle *while* s'éxecute  sans cesse, jusqu'à ce que la condition ne soit plus remplie. À l'opposé de *for*, il faut s'occuper soi même de déclarer et d'incrémenter les variables.

```
int x =0; // initialisation
while ( x < width ) { // condition
	line(x,0,x,height); // bloc de code
	x = x + 3; // incrementation
}
```
Plus d'informations : [http://wiki.t-o-f.info/Processing/Boucle](http://wiki.t-o-f.info/Processing/Boucle)

### 3 - Les matrices de transformation

Les transformations modifient la localisation des éléments dessinés. L'ordre des transformations est très important.

L'utilisation des matrices de transformation se fait en 3 étapes.

1. Nous déclarons une matrice en utilisant `pushMatrix()`.
2. Nous appliquons des transformations `rotate`, `translate`, `scale`, etc.
3. Nous terminons la matrice en utilisant `popMatrix()`. 

Les matrices peuvent aussi être imbriqués.

Tout est dit ici : [http://wiki.t-o-f.info/Processing/Transformation](http://wiki.t-o-f.info/Processing/Transformation)


### 4 - Fonction *alétatoire*

`random()` retourne un nombre aléatoire entre 0 et 1.


`random(1,100)` retourne un nombre aléatoire entre 1 et 100, donc nous lui donnons une valeur maximum et minimum.

## Atelier

L'objectif de l'atelier et de créer une images avec des tableaux et des transformations. Il faudra donc y aller avec des *groupes* : champs de fleurs, galaxies, grappe de raisins, etc. Épatez-moi!

1. Utiliser des fonctions de formes.
2. Utiliser des variables pour enregistrer les couleurs.
3. Utiliser des tableaux pour enregistrer les positions des formes.
4. Utiliser des boucles pour dessiner des groupes de formes, et des transformation pour altérerer les éléments du groupe.

Il va y avoir des erreurs, affichée en rouge dans la console lorsque vous vous tromper. Lisez ces erreurs. N'hésitez pas à utiliser 
