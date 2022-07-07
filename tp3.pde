//Video de youtube :https://youtu.be/nsh2B-FAPQ0

//grilla
int g=25;
int tam;



//bombas
PImage bombayexplocion[]=new PImage[2];

String estado;

void setup() {  
  size(500, 500);


  cursor (CROSS);
  tam=width / g ;
  estado="inicio";
  bombayexplocion[0]=loadImage("bomb.png");
 // bombayexplocion[1]=loadImage("explocion"); lo queria usar a la hora de que colsione estalle.
}

void draw() { 
  println(enemigo16);
  println("mouseX:");
  println(mouseX);
  println("mouseY:");
  println(mouseY);

  if (  estado.equals("inicio") ) {
    background(0);
    pushStyle();
    strokeWeight(3);
    stroke(250, 8, 16);
    fill(118, 24, 219);

    textSize(30);
    text("    Bomb Down", width/4, height-400);
    //marco de los textos 
    line(113, 52, 386, 52);
    line(386, 52, 386, 130);
    line(386, 130, 113, 130);
    line(113, 130, 113, 52); 
    textSize(18);
    text("    Press Space", width/3, height/2); 
    line(170, 221, 310, 220);
    line(310, 220, 310, 266);
    line(310, 266, 170, 266);
    line(170, 266, 170, 221);
    textSize(18);
    text("Tecnologia Multimedial 1", width/4, height-150);
    text("  CC-Santiago Zakovicz", width/4, height-100);
    text("Profe:Matías Jauregui Lorda", width/4, height-50);
    popStyle();


    //INSTRUCCIONES
  } else if ( estado.equals("instrucciones") ) {

    background(0);
    pushStyle();
    fill(118, 24, 219);
    textSize(25);
    text("Evita los enemigos", 140, height-300);
    text("Con A te desplazas hacia la izquierda y\n           con D hacia la derecha", 20, height-200);
    textSize(30);   
    text("Press Space", width/3, height/5); 
    stroke(250, 8, 16);
    line(113, 52, 386, 52);
    line(386, 52, 386, 130);
    line(386, 130, 113, 130);
    line(113, 130, 113, 52); 


    popStyle();

    //JUGAR
  } else if ( estado.equals("jugando") ) {
    //para ganar esperar a que enemigo16 llegue a -500
    grilla();
    bombacallendo(); 
    jugando();
    if (enemigo16==-height) {
      estado="ganar";
      // ellipse(xc, yc, cradio, cradio);//juagador para "colsion"/*incompleto*/
    }

    //CUANDO SE GANA
  } else if ( estado.equals("ganar") ) {
    background(0);
    textSize(40);
    text(" ¡GANASTE!", width/4, 150);
    textSize(18);
    text("        R\nPara reiniciar", 187, 253);

    //CUANDO SE PIERDE
  } else if ( estado.equals("perder") ) {
    background(0);
    textSize(40);
    text("   Perdiste", width/4, 150);
    textSize(18);
    text("        R\nPara reiniciar", 187, 253);
  }
}
void keyPressed() {
  //evento que cambia de inicio a instrucciones a jugando 
  if ( estado.equals("inicio") && key == ' ' ) {
    estado = "instrucciones";
  } else if ( estado.equals("instrucciones") && key == ' ' ) {
    estado = "jugando";
  }
  //------___---___reinicio---___---___---___---___

  if (estado.equals("ganar")==true) {
    if ( key=='r') {
      estado="inicio";
      g=25;
      tam=width / g;
      bombayexplocion[0]=loadImage("bomb.png");
      //------___---___---___---___---___---___
      x=250.0;
      y=150;
      xc=250;
      radio= 90;

      enemigo1=550;
      enemigo2=650;
      enemigo3=700;
      enemigo4=800;
      enemigo5=900;
      enemigo6=1000;
      enemigo7=1100;
      enemigo8=1200;
      enemigo9=1300;
      enemigo10=1400;
      enemigo11=1500;
      enemigo12=1600;
      enemigo13=1700;
      enemigo14=1800;
      enemigo15=1900;
      enemigo16=2000;
    }
  }
  //____--___--___-___-___-__-___---___---_
  if (estado.equals("perder")==true) {
    if ( key=='r') {
      estado="inicio";
      g=25;
      tam=width / g;
      bombayexplocion[0]=loadImage("bomb.png");
      //------___---___---___---___---___---___
      x=250.0;
      y=150;
      xc=250;
      radio= 90;

      enemigo1=550;
      enemigo2=650;
      enemigo3=700;
      enemigo4=800;
      enemigo5=900;
      enemigo6=1000;
      enemigo7=1100;
      enemigo8=1200;
      enemigo9=1300;
      enemigo10=1400;
      enemigo11=1500;
      enemigo12=1600;
      enemigo13=1700;
      enemigo14=1800;
      enemigo15=1900;
      enemigo16=2000;
    }
  }

  if (key=='p') {
    estado="ganar";
    if (key=='o') {
      estado="perder";
    }
  }
}
