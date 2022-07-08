void inicio(){
  textFont(pixel);
  fill(255);
  text(" PRESIONA 'SPACE'\n PARA CONTINUAR",190,350);
}

void instrucciones(){
  if(dist(mouseX, mouseY,300,320) <= 40){
     strokeWeight(5);
     stroke (255,0,0);
    }else{
     strokeWeight(5);
     stroke(255);
    }
    rect(250,300,100,50);
    textFont(pixel);
    fill(255);
    text("INICIAR",255,335); 
    text(texto, 110, 100);
}

void jugando(){ 
  tam = width/2;
  if (posX >= width-tamX/2){
        velX = -1*10;
    }
    if (posX <= 0+tamX/2){
        velX = 5*2;
    }
    posX = posX + velX;
   fill(255,0,0);
   noStroke();
   ellipse(balaX, balaY,7,15);
   if (disparo && balaY > 0) {
      balaY -= 60;
   } else {
    balaX = posX;
    balaY = posY;
    disparo = false;
   } 
   pushStyle();
    imageMode(CENTER);
    image(nave,posX,posY,tamX,tamY);
   popStyle();
   
   for (int i=0; i<cant; i++) {
   image (asteroide, pos[i][1], pos[i][0],80,80 );
    if (pos[i][1]>height+tam2[i]) {
     tam2[i] = random(40, 60);
     dir[i] = random(1, 3);
     pos[i][0] = random(tam2[i]/4, height);
     pos[i][1] = random(-200, -100);
    }
    pos[i][0] += dir[i];
    if (derribar(balaX, balaY, pos[i][1], pos[i][0], tam2[i])) {
      background(255, 0, 0);
      disparo = false;
      pos[i][0] = random(-200, -100);
      pos[i][1] = random(tam2[i]/2, height/2);
    }
   }
  }
  boolean derribar(float balaX, float balaY, float nx, float ny, float tam) {
  float distan = dist(balaX, balaY, nx, ny);
  return distan < tam2[0];
  
}
void perdiste(){
    fill(255);
    textFont(pixel);
    text("PRESIONA 'ENTER'\n PARA REINICIAR",195,350);
    textSize(50);
    text("PERDISTE", width/3.2, height/2);
}

void ganaste(){
    textFont(pixel);
    textSize(50);
    fill(255);
    text("GANASTE", width/3.2, height/2);
    if (keyCode == RIGHT){
      estado = "CREDITOS";
    }
}

void creditos(){
    textFont(pixel);
    textSize(20);
    text(texto2,width/4, height/4);
}

void reiniciar(){
  estado = "INICIO";
  tiempo = 0;
  contador = 0;
  for (int i=0; i<cant; i++) {
    tam2[i] = random(40, 60);
    dir[i] = random(1, 3);
    pos[i][0] = random(-200, -100);
    pos[i][1] = random(tam2[i]/4, height);
  }
}
