
// CLARA PONZ RUIZ 91472/1 TP2

int cant = 15;
int tam;

void setup() {
  size(600, 600);
  tam = width/cant;
}

void draw() {
  rectMode(CENTER);
  background(230);
  for (int a=0; a<cant; a++) {
    for(int b=0; b<cant; b++) {
      float distancia = dist(mouseX, mouseY, a*tam+tam, b*tam+tam);
      float ancho = map(distancia, 0, 2300, tam/4, tam*2);
      noStroke();      
      fill(#00E8FF); //cyan
      rect(a*tam+tam/2.4, b*tam+tam/2.4, ancho+2, ancho+2);      
      fill(255, 255, 0); //amarillo
      rect(a*tam+tam/1.6, b*tam+tam/1.6, ancho+2, ancho+2);      
      fill(0, 0, 255); //azul
      rect(a*tam+tam/2.3, b*tam+tam/2.2, ancho+2, ancho+2);      
      fill(255, 0, 0); //rojo
      rect(a*tam+tam/1.8, b*tam+tam/1.8, ancho+2, ancho+2);

    }
  }
   
for (int x=0; x<width; x++){
for(int y=0; y<height; y++){
   noStroke();
  fill(0); //negro
      rect(x*tam+tam/2, y*tam+tam/2, 30, 30);
 
  
}
  }
}
