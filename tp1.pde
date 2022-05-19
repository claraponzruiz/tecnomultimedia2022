
// CLARA PONZ RUIZ (91472/1) TP1;

//hace clic para comenzar a escuchar la música

import ddf.minim.*;
Minim minim;
AudioSample sound;

int Z = 300; // movimiento del minecraft team
int X = 0; // movimiento para el fondo
int A = 500; //creditos 1
int B = 675; //creditos 2
int C = 750; //creditos 3
int D = 825; //creditos 4
int E = 950; //creditos 5
int F = 1025; //creditos 6
int G = 1175; //ma
int H = 1250; //pa
int I = 1600; //frase del final

PFont font;
PImage fondo;       
PImage picaxe;
PImage logo;

void setup() {
 size(800,400);
 
 minim = new Minim (this);
 sound = minim.loadSample ("creditsong.mp3",512);
 
}

void draw () {
  font = createFont("Minecraftia-Regular.ttf", 12);
  fondo = loadImage("fondolargo.jpg");
  picaxe = loadImage("picaxe.png");
  logo = loadImage("logo.png");                                    
  
   image(fondo,0,X);
X = X - 0-1 ;
 image(logo, 180, Z);
 Z = Z - 2;

  fill(220);
  
  textAlign(CENTER);
   textFont(font);
  text("---------------------- \n---------------------- \n    Minecraft Team \n----------------------\n----------------------", 400, A);
A = A - 2 ; 


textAlign(LEFT);
  text ("Original Creator \n           Clara Ponz Ruiz", 200, B);
  B = B - 2;
text ("Chief Creative Officer \n           Matías Jauregui Lorda", 200, C);
C = C - 2;
text ("Producers\n           Manuel I. Balaguer\n           Pau y Cande\n           Tommy D. Cine\n           Luz Muletas", 200, D);
D = D - 2;
text ("Lead Engineers\n           Jeremías Milos\n           Simón Da Silva", 200, E);
E = E - 2;
text ("Game Developers\n           Valentina Triolo\n           P. C. García\n           Jeremías Picsa\n           Pablo Moro", 200, F);
F = F - 2;
text ("Launcher Tech Lead\n           Clara's Mother",200, G);
G = G - 2;
text ("Launcher Developer\n           Clara's Father",200, H);
H = H - 2;
text (" 'Twenty years from now, you will be more disappointed\n by the things that you didn't do than by the ones you\n did do. So throw off the bowlines. Sail away from the \n safe harbor. Catch de trade winds in your sails.\n Explore. Dream. Discover.' - Unknown",200,I);
I = I - 2;

    image(picaxe,mouseX,mouseY);
}
void mousePressed (){
sound.trigger ();
}
