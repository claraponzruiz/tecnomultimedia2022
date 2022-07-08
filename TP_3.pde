/*TP 3 juego interactivo libre
video TRIOLO VALENTINA 91420/9 https://youtu.be/WMdxtmnOwfo
video PONZ RUIZ CLARA 91472/1 https://youtu.be/djiBpAg6PSU
*/

int cant = 6;
int click = 10;
int tam, tiempo, contador;
PImage galaga, instrucciones, nave, asteroide;
PFont pixel;
float posX, posY, tamX, tamY, velX, balaX, balaY;
float [] tam2 = new float[cant];
float [] dir = new float[cant];
float [][] pos = new float[cant][2];
boolean disparo;
String estado, texto, texto2;

void setup(){
  size(600,500);
  textSize(25);

  galaga = loadImage ("galaga.jpg");
  instrucciones = loadImage ("instrucciones.jpg");
  pixel = createFont ("pixel.ttf",25);
  nave = loadImage ("nave.png");
  asteroide = loadImage ("asteroide.png");
  
  estado = "INICIO";
  texto = "   ¡DERRIBA LOS ASTEROIDES!\n\n    DISPARA HACIENDO CLICK\n\n  ¡HAZLO EN EL MENOR TIEMPO!";
  texto2 = "TECNO MULTIMEDIAL\n\n ALUMNAS\n\n PONZ RUIZ CLARA, TRIOLO VALENTINA\n\n PROFESOR\n\n MATIAS JAUREGUI LORDA\n\n ¡GRACIAS POR JUGAR!";
  
  tiempo = 0;
  contador = 0;
  posX = 0;
  posY = 450;
  tamX = 70;
  tamY = 60;
  velX = 5; 
  balaX = mouseX;
  balaY = mouseY;
  
  for (int i=0; i<cant; i++) {
    tam2[i] = random(40, 60);
    dir[i] = random(1, 3);
    pos[i][0] = random(-200, -100);
    pos[i][1] = random(tam2[i]/4, height);
  }
 
}

void draw(){
    if(estado.equals("INICIO")){
    background(0);
    image(galaga,0,0,620,500);
    inicio();
    
  }else if( estado.equals("INSTRUCCIONES") ){
    background(0);
    image(instrucciones,0,0,620,500); 
    fill(0);
    instrucciones();
    
  }else if(estado.equals("JUGANDO")){
    background(0);
    image(instrucciones,0,0,620,500);  
    jugando();
    if (contador >= click){
      estado = "GANASTE";
    }
    tiempo++;
    if (tiempo >= 4 *60){
      estado = "PERDISTE";
    }
  }else if( estado.equals("PERDISTE") ){
    background(0); 
    image(instrucciones,0,0,620,500);   
    perdiste();
    
  }else if( estado.equals("GANASTE") ){
    background(0);
    image(instrucciones,0,0,620,500);   
    ganaste();
  }
   if( estado.equals("CREDITOS") ){
    background(0);
    image(instrucciones,0,0,620,500); 
    creditos(); 
    }
}

void keyPressed(){
  if( estado.equals("INICIO") && key == ' ' ){
    estado = "INSTRUCCIONES";
  }
  if (keyCode == ENTER){
   if (estado.equals("JUGANDO") || estado.equals("PERDISTE") || estado.equals("GANASTE") || estado.equals("CREDITOS")) {
    reiniciar();
   }
  }
}

void mousePressed(){
  if (estado.equals("INSTRUCCIONES") && dist(mouseX, mouseY,300,320) <= 40){
    estado = "JUGANDO";
  } 
  if (estado.equals("JUGANDO")){
    disparo = true;
    contador += 1;
  }
}
