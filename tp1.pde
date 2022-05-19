PImage imagen;
PFont f;
color t1, t2, t3, t4,t5,t6;

PImage imagen2;
PImage cuatro;
PImage diamante; 
PImage xlr8;








void setup() {


  imagen2 = loadImage("omnitrix.png");
  cuatro=loadImage("cuatro.png");
  diamante=loadImage("diamante.png");
  xlr8=loadImage("xlr8.png");



  textAlign(CENTER, CENTER) ;
  imagen = loadImage("benw.jpg");

  f = createFont("BADABB__.TTF", 200);





  noCursor();

  t1= 255;
  t2= 0;
  t3=0;
  t4=0;
  t5=0;
  t6=0;

  size(600, 600);

  rectMode(CENTER);
  rect(300, 300, 300, 300);
}



void draw() {


  println("x");
  println(mouseX);
  println("y");
  println(mouseY);


  background(255);



  image(imagen, CENTER, CENTER, 600, 600);




  fill(0);
  ellipse(width/2, height/2, 300, 300);

  //fill(38, 206, 17);

  //fill(38,random(255),17);

  fill(random(300), random(255), random(0));

  ellipse(width/2, height/2, 250, 250);
  if (mousePressed) {
    fill(254, 32, 32);
  }
  ellipse(width/2, height/2, 250, 250);

  fill(0);
  triangle(170, 235, 300, 300, 175, 375);

  triangle(432, 235, 300, 300, 420, 375);


  //aparicion 1 
  if (frameCount == 200) {
    t1 = 0 ;
  }



  fill(255, 255, 255, t1);

  textFont(f, 30);
  text("BEN 10:\nsupervising Producer\nGlen Murakami ", width/2, height/2);

  //aparicion2




  fill(255, 255, 255, t2);  
  text("ELENCO\nBen Tennyson , Gwen Tennyson\nKevin Levin , Max Tennyson\nJulieYamamoto Sandra Tennyson", width/2, height/2, 10);


  if (frameCount == 300) {
    t2 = 255;
  } else if (frameCount >=450) {
    t2 = 0;
  }

  fill(255, 255, 255, t3);  
  text("Diseno de efectos sonoros\nEditorial  Robert Hargreaves ", width/2, height/2, 10);
  if (frameCount == 500) {
    t3 =255;
  } else if (frameCount >=650) {
    t3 = 0;
  }
  fill(255, 255, 255, t4); 
  text("Ingenieros de musica\nMark Mattson , Mako Sujishi", width/2, height/2, 10);
  if (frameCount == 650) {
    t4 =255;
  } else if (frameCount>=800) {
    t4-=10;
  }

  //----------------------------------------------------------0-----------------------------------------------------------
  if (mousePressed==false ) {
    image(imagen2, mouseX, mouseY, 40, 40);
  }
  if (mouseButton==LEFT && mousePressed==true ) {
    image(cuatro, mouseX, mouseY, 40, 40);
  } else if (mouseButton==CENTER && mousePressed==true ) {

    image(xlr8, mouseX, mouseY, 50, 50);
  } else if ( mousePressed==true) {
    image(diamante, mouseX, mouseY, 40, 40);
  }
  
  if(t4 <= 0 && frameCount >=900 ){
    fill(0,0,0,t5);
    rect(300,300,600,600);
    t5++;
    
    if (frameCount >=1000){
    fill(random(300), random(255), random(0),t6);
    textSize(100);
      text("FIN",width/2, height/2);
      t6++;
      
      
  }
  }
  
  

}
