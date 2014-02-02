EDM4600 - Cours 3 - Exemples
=======

Références, documentations et téléchargements pour le cours 3.

Le cours a lieu le 24 janvier 2014.

## Dessins avec des tableaux et des boucles

```
int size = 1000;

float[] posX = new float[size];
float[] posY = new float[size];
float[] sizes = new float[size];

int[] types = new int[size];
color[] colors = new color[size];

void setup()  {
  size(960,540,P3D);
  
  for(int i=0; i<size; i++) {
    posX[i] = random(0,width);
    posY[i] = random(0,height);
    types[i] = (int)random(0,3);
    sizes[i] = random(10,100);
    colors[i] = color(random(0,255),random(0,255),random(0,255));
  }
  
}

void draw()  {
  
  background(255);
  noStroke();
  ellipseMode(CENTER);
  
  for(int i=0; i<size; i++) {
    fill(colors[i]);
    ellipse(posX[i], posY[i], sizes[i], sizes[i]);
    
  }
}
```

## Centre de rotation

```
void setup() {
  size(960, 540, P3D);
}

void draw() {

  background(255);
  noStroke();

  float anim = (float)frameCount/30 * PI;
  
  pushMatrix();
  translate(960/2, 540/2);
  pushMatrix();
  rotate(anim);

  fill(255,0,0);
  ellipse(0,0,100,100);
  fill(0,255,0);
  ellipse(0,100,100,100);
  fill(0,0,255);
  ellipse(0,200,100,100);
  
  popMatrix();
  popMatrix();
}
```
