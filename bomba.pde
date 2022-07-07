//cordenadas de el PImage y ellipse de colision 
float x=250.0;
float y=150;
float xc=250;
float yc=198;
float radio= 90;
float cradio=60;

//numeros de enemigos como cordenadas de Y
int enemigo1=550;
int enemigo2=650;
int enemigo3=700;
int enemigo4=800;
int enemigo5=900;
int enemigo6=1000;
int enemigo7=1100;
int enemigo8=1200;
int enemigo9=1300;
int enemigo10=1400;
int enemigo11=1500;
int enemigo12=1600;
int enemigo13=1700;
int enemigo14=1800;
int enemigo15=1900;
int enemigo16=2000;

void bombacallendo() {
  //interaccion con el personaje 
  image(bombayexplocion[0], x, y, radio, radio);
  if (keyPressed==true &&(key=='a')) {
    x=50.0;
    xc=50.0;   
    image(bombayexplocion[0], x, y, radio, radio);
  } else if (keyPressed==true &&(key=='d')) {
    x=400.0;
    xc=400.0;
  } else if (keyPressed==false ) {
    x=200.0;
    xc=250.0;
  }
}





void jugando() {

  enemigo1--;
  enemigo2--;
  enemigo3--;
  enemigo4--;
  enemigo5--;
  enemigo6--;
  enemigo7--;
  enemigo8--;
  enemigo9--;
  enemigo10--;
  enemigo11--;
  enemigo12--;
  enemigo13--;
  enemigo14--;
  enemigo15--;
  enemigo16--;
  
  fill(15, 230, 247);
  rect(250, enemigo1, 30, 30);
  rect(100, enemigo2, 30, 30);
  rect(400, enemigo3, 30, 30);
  rect(250, enemigo4, 30, 30);
  rect(100, enemigo5, 30, 30);
  rect(400, enemigo6, 30, 30);
  rect(250, enemigo7, 30, 30);
  rect(100, enemigo8, 30, 30);
  rect(400, enemigo9, 30, 30);
  rect(100, enemigo10, 30, 30);
  rect(250, enemigo11, 30, 30);
  rect(400, enemigo12, 30, 30);
  rect(250, enemigo13, 30, 30);
  rect(100, enemigo14, 30, 30);
  rect(400, enemigo15, 30, 30);
  rect(250, enemigo16, 30, 30);
}
  
  
//este fue el codigo que tarte de usar pero no se como seguir ya que me da un bug al jugar
  /* if(cradio==enemigo1  ){
   estado="perder";
   
   }else if(cradio==  enemigo2  ){
   estado="perder"; 
   }else if(cradio==  enemigo3  ){
   estado="perder";
   }else if(cradio== enemigo4  ){
   estado="perder"; 
   
   //tendria que seguir con todos los enemigos hasta el 16 
   }
   */


//codigo de interaccion 
/*
void jugador() {


  image(bombayexplocion[0], x, y, radio, radio);
  if (keyPressed==true &&(key=='a')) {
    x=50.0;

    image(bombayexplocion[0], x, y, radio, radio);
  } else if (keyPressed==true &&(key=='d')) {
    x=400.0;
  } else if (keyPressed==false ) {
    x=200.0;
  }
}

*/
