float fondo ;
int color1;

int x ;
int y ; 
float tam;
void setup() {
  size(500, 500);
  colorMode(HSB);
  color1=0;

  tam=20.0;
  x=0;
  y=0;
}


void draw () {
  println("x");
  println(mouseX);
  println("y");
  println(mouseY);





  fondo = map(mouseY, 255, 100, 50, 255);


  background(fondo);
  if (key=='p') {
    misellipses();
  }
  lineaspsicodelicas();

  if (key=='g') {
    reiniciar ();
  }
}

void lineaspsicodelicas() {

  if (mousePressed) {

    for ( color1=0; color1 <mouseY; color1++) {
      stroke(color1*1.360, mouseX, mouseY, 255);
    }
  }
  for (int i=0; i<height; i +=10) {


    line(i, mouseY, width, 0 ); 
    line(i, mouseY, width, 500);
  }

  for ( int r=0; r<height; r+=10) {

    line(r, mouseY, 0, height);
    line(r, mouseY, 0, 0);
  }
  for ( int  l=0; l<height; l+=10) {
    line(l, 500, mouseX, 0);
    line(l, 0, mouseX, 500);
  }
}

void misellipses() {


  for (y=0; y<height; y+=map(250, 0, width, 1, 100)) {
    for (x=0; x<=width; x+=map(250, 0, width, 1, 100))
    {
      ellipse (x, y, random(20), tam);
    }
  }
}

void reiniciar () {

  tam=20.0;
  x=0;
  y=0;
}
