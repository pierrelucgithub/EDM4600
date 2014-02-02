float positionX = 0;
float positionY = 0;
float factor = 0;

PImage img1;
PImage img2;
PImage img3;

float randoms[] = new float[2];

void setup() {
  size(960, 540, P3D);
  
  hint(ENABLE_DEPTH_TEST);

  img1 = loadImage("planet.png");
  img2 = loadImage("comet.png");
  img3 = loadImage("planet2.png");
  
  for(int i=0; i<2; i++) {
    randoms[i] = random(1);
  }
}

void draw() { 

  // Reset de mon background
  background(0, 0, 0, 0);

  // Incrémente facteur
  // factor = factor + 0.3;
  factor += 0.03;
  println(factor);

  drawEnsemble(-100, 0, 1, randoms[0], img1);
  drawEnsemble(100, 0, 0.5, randoms[1], img3);
}

void drawEnsemble(float offsetX, float offsetY, float scale, float random, PImage imagePlanet) {
  
  // Dessin d'ensemble 1
  imageMode(CENTER);  
  pushMatrix();
  translate(width/2+offsetX, height/2+offsetY); 

     
  //PGL pgl = beginPGL();
  
//clearZBuffer();
  //pgl.enable(PGL.DEPTH_TEST);
  //pgl.enable(PGL.ALPHA_TEST);
  
 // hint(DISABLE_DEPTH_TEST);
//hint(ENABLE_DEPTH_SORT);
  
  // glEnable ( GL_ALPHA_TEST ) ;

  // Dessins de planète
  pushMatrix();
  scale(1.0*scale);
  rotate(frameCount/100.0);
  image(imagePlanet, 0, 0);
  popMatrix();

  // Dessin de comète
  pushMatrix();
  scale(0.5*scale);
  translate(sin(factor*random)*200, 0, cos(factor*random)*200);
  image(img2, 0, 0);
  popMatrix();

  popMatrix();
}
