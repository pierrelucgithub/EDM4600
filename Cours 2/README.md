EDM4600 - Cours 2
=======

Références, documentations et téléchargements pour le cours 2.

Le cours a lieu le 17 janvier 2014.

## Références

xxx

## Atelier

L'objectif de l'atelier et de créer un paysage

### 1 - Modèle de base

Le modèle de base de tout sketch Processing:


```java
void setup() {
  // La taille de la fenetre.
  size(400,400);

  frameRate(30); // Le nombre d'images par seconde.
  smooth(); // Lisser les formes dessinees.
}

void draw() {
 // Remplir l'arriere-plan d'une teinte de gris.
  background(127);
}
```