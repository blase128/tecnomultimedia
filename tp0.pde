void setup() {
background(#60CFFA);
 strokeWeight(2); 
size(800,800);

}

void draw(){
  frameRate(60);
  //sol
  fill(#FFD900);
 ellipse(15,22,100,100);
 line(10,71,10,89);
 line(25,72,29,88);
 line(38,68,45,84);
 line(49,60,58,74);
 line(56,50,69,64);
 line(62,38,76,50);
 line(65,26,81,35);
 line(66,15,82,20);
 line(65,6,82,5);
 
//montaña
fill(#0A6F22);
beginShape(); 

vertex(0, 400);

vertex(50,400);

vertex(150, 320);

vertex(200,250);

vertex(250, 100);



vertex(350, 100);

vertex(700, 400);

endShape();
//cascada 
fill(#0E25E8);
beginShape(); 

vertex(260,99);

vertex(243,259);

vertex(214,323);

vertex(180,399);

vertex(218,399);

vertex(261,317);

vertex(278,257);

vertex(295,100);

endShape();

fill(#06B72D);
rect(0,445,658,445);
fill(#0E25E8);
quad(0,399,629,402,627,447,0,442);
  
  
  
 
  //parte del pico 
  fill(255,155,0);
 triangle(320,360,260,315,315,270);
 fill(255,0,0);
 ellipse(400,300,200,200);
 line(260,314,300,314);
 fill(255);
 //ojos
  ellipse(340,275,50,70);
  fill(0);
  ellipse(330,290,20,20);
  //para la ubicacion
println("x:");
println(mouseX);
println("Y:");
println(mouseY);
//arbol
fill(#6A2323);
quad(633,0,633,739,799,741,799,0);
quad(644,445,506,585,533,603,692,520);
fill(#227430);

triangle (520,217,690,73,887,217);
triangle(485,177,695,0,930,177);
triangle(450,111,720,-100,950,111);
//cuerpo 
fill(0);
quad(473,371,490,391,481,391,466,374);
fill(255,0,0);
ellipse(580,465,300,200);
triangle(589,537,486,431,434,477);
ellipse(725,445,40,20);
ellipse(730,457,40,20);
ellipse(725,470,40,20);
//gorrito
fill(0);
quad(305,238,283,144,410,110,440,199);
fill(255);
quad(304,236,299,218,433,180,439,197);
fill(0);
triangle(305,236,275,211,296,207);

fill(255);
circle(217,0,100);
circle(289,3,100);
circle(355,0,100);






}
