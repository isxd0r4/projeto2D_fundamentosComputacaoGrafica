color azul = color(187, 211, 211);
color lilas = color(193, 181, 207);
color roxo = color(130, 112, 156);
color cinzaEscuro = color(50, 55, 75);
color cinzaClaro = color(170);
color papel = color(245, 245, 245);
color detalhes = color(30, 35, 45);
color rosaClaro = color(219, 153, 199);
color rosaEscuro = color(147, 73, 122);
color branco = color(245);

 // Segunda linha (letras aleatórias, incluindo um W)
  char[] letters = new char[10];
  boolean hasW = false;
  boolean ligado = false;
  boolean modoDig = false;
  
  boolean teclaPressionada = false;
int teclaAtiva = -1;

// === Configuração do teclado ===
String[] linha1 = { "0","1","2","3","4","5","6","7","8","9" };
String[] linha2 = { "Q","E","T","W","A","S","D","F","G","H" };
  
 

void setup() {
  size(800, 600);
  for(int i = 0; i < 10; i++) {
    char c = char(int(random(65, 91))); // gera letra aleatória A–Z
    letters[i] = c;
    if (c == 'W') hasW = true;
  }
  
   // Garante que haja um 'W'
  if (!hasW) {
    int idx = int(random(10));
    letters[idx] = 'W';
  }
}


void draw() {
  background(azul);
  
  //Papel
  fill(papel);
  stroke(220);
  strokeWeight(2);
  rect(270, 15, 260, 240, 5);
  noStroke();

  //Rolo de saida do papel
  fill(cinzaEscuro);
  rect(252, 233, 300, 25, 5);
  fill(cinzaClaro);
  rect(250, 230, 300, 25, 5);
  fill(detalhes);
  rect(225, 230, 20, 25, 5);
  rect(555, 230, 20, 25, 5);
  
  //Impressão de altura 
  fill(cinzaEscuro);
  beginShape();
  vertex(630, 400);
  vertex(680, 555);
  bezierVertex(680, 585, 680, 585, 655, 585); 
  vertex(145, 585);
  bezierVertex(120, 585, 120, 585, 120, 555); 
  vertex(170, 400);
  endShape(CLOSE);

  //Parte superior 
  fill(roxo);
  beginShape();
  vertex(240, 270);
  vertex(560, 270);  
  bezierVertex(570, 270, 570, 270, 580, 280); 
  bezierVertex(595, 300, 610, 320, 575, 300); 
  vertex(210, 300); 
  bezierVertex(200, 305, 200, 300, 220, 280); 
  vertex(223, 280); 
  bezierVertex(220, 305, 210, 270, 240, 270); 
  endShape(CLOSE);

  //Corpo do rosto
  fill(lilas);
  beginShape();
  vertex(220, 300);  
  vertex(580, 300);  
  bezierVertex(596, 299, 600, 300, 610, 330); 
  vertex(630, 400); 
  vertex(170, 400); 
  vertex(190, 330);  
  bezierVertex(200, 300, 200, 300, 220, 300);  
  endShape(CLOSE); 

  //Base roxa
  fill(roxo);
  beginShape();
  vertex(630, 400);
  vertex(680, 555);
  bezierVertex(680, 570, 680, 570, 655, 570); 
  vertex(145, 570); 
  bezierVertex(120, 570, 120, 570, 120, 555); 
  vertex(170, 400);
  endShape(CLOSE);

  //Trapézio branco
  fill(branco);
  beginShape();
  vertex(610, 410); 
  vertex(660, 545); 
  bezierVertex(660, 555, 660, 555, 635, 555); 
  vertex(165, 555); 
  bezierVertex(140, 555, 140, 555, 140, 545); 
  vertex(190, 410); 
  endShape(CLOSE);

  //Rosto
  drawFace();

  //Caixa de controle
  drawControlBox();
  
drawKeyboard();

}
/*
void drawFace() {
  //Olhos
  noStroke();
  fill(branco);
  ellipse(350, 340, 30, 38);
  ellipse(450, 340, 30, 38);
  
  fill(rosaEscuro);
  ellipse(350, 340, 18, 24);
  ellipse(450, 340, 18, 24);
  
  fill(detalhes);
  ellipse(350, 340, 10, 14);
  ellipse(450, 340, 10, 14);
  
  fill(255);
  ellipse(345, 333, 5, 5);
  ellipse(445, 333, 5, 5);
  
  //Boca
  fill(detalhes);
  rectMode(CENTER);
  rect(400, 375, 60, 4, 2);
  rectMode(CORNER);
  
}*/

void drawFace() {
  // === Olhos ===
  noStroke();
  fill(branco);
  ellipse(350, 340, 30, 38);
  ellipse(450, 340, 30, 38);
  
  fill(rosaEscuro);
  ellipse(350, 340, 18, 24);
  ellipse(450, 340, 18, 24);
  
  fill(detalhes);
  ellipse(350, 340, 10, 14);
  ellipse(450, 340, 10, 14);
  
  fill(255);
  ellipse(345, 333, 5, 5);
  ellipse(445, 333, 5, 5);
  
 // Contorno externo da boca
  stroke(0);
  strokeWeight(2);
  fill(150, 0, 0); // vermelho escuro
  beginShape();
  vertex(370, 370);
  bezierVertex(380, 400, 420, 400, 430, 370); // curva inferior
  bezierVertex(430, 355, 370, 355, 370, 370); // curva superior
  endShape(CLOSE);

  // Dentes (parte branca superior interna)
  noStroke();
  fill(255);
  beginShape();
  vertex(372, 370);
  bezierVertex(382, 362, 418, 362, 428, 370);
  bezierVertex(428, 368, 372, 368, 372, 370);
  endShape(CLOSE);

  // Língua (parte inferior interna)
  fill(255, 100, 120);
  beginShape();
  vertex(378, 383);
  bezierVertex(388, 392, 412, 392, 422, 383);
  bezierVertex(408, 388, 392, 388, 378, 383);
  endShape(CLOSE);
}










void drawControlBox() {

  //Fio
  stroke(detalhes);
  strokeWeight(4);
  noFill();
  bezier(616, 351, 640, 360, 650, 280, 670, 264);

  //Sombra
  noStroke();
  fill(cinzaEscuro);
  rect(675, 125, 90, 180, 15);

  //Caixa
  fill(roxo);
  rect(670, 120, 90, 180, 15);


 // === Botão ON/OFF ===
  drawPowerButton(715, 155, 40);
  drawDigButton(715, 210, 40);
  drawButton(715, 265, 40, "T");
}

void drawPowerButton(float x, float y, float d) {
  if (ligado) {
    fill(rosaEscuro); // cor quando ligado
  } else {
    fill(cinzaClaro); // cor quando desligado
  }
  stroke(cinzaEscuro);
  strokeWeight(2);
  ellipse(x, y, d, d);

  fill(branco);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(14);
  text(ligado ? "ON" : "OFF", x, y);
}




void drawButton(float x, float y, float d, String label) {
  fill(cinzaClaro);
  stroke(cinzaEscuro);
  strokeWeight(2);
  ellipse(x, y, d, d);
  
  fill(branco);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(14);
  text(label, x, y);
}

void drawDigButton(float x, float y, float d) {
  fill(modoDig ? rosaClaro : cinzaClaro);
  stroke(cinzaEscuro);
  strokeWeight(2);
  ellipse(x, y, d, d);

  fill(branco);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(14);
  text(modoDig ? "DIG" : "D", x, y);
}

void mousePressed() {
  // Botões ON/OFF e DIG
  float distOnOff = dist(mouseX, mouseY, 715, 155);
  float distDig = dist(mouseX, mouseY, 715, 210);

  if (distOnOff < 20) ligado = !ligado;
  if (distDig < 20) modoDig = !modoDig;

  // Posição central do trapézio branco
  float centerX = 400;     // centro aproximado da máquina
  float startY = 445;      // posição vertical dentro do trapézio
  float espacamento = 42;  // distância entre teclas
  float diam = 32;         // tamanho das teclas

  // Calcula início da linha 1 para centralizar
  float totalWidth = (linha1.length - 1) * espacamento;
  float startX = centerX - totalWidth / 2;

  // Primeira linha
  for (int i = 0; i < linha1.length; i++) {
    float x = startX + i * espacamento;
    float y = startY;
    if (dist(mouseX, mouseY, x, y) < diam / 2) {
      teclaPressionada = true;
      teclaAtiva = i;
    }
  }

  // Segunda linha
  for (int i = 0; i < linha2.length; i++) {
    float x = startX + i * espacamento;
    float y = startY + 55;
    if (dist(mouseX, mouseY, x, y) < diam / 2) {
      teclaPressionada = true;
      teclaAtiva = i + 10;
    }
  }
}

void mouseReleased() {
  teclaPressionada = false;
  teclaAtiva = -1;
}


void drawKeyboard() {
  // Posição central do trapézio branco
  float centerX = 400;     // centro aproximado da máquina
  float startY = 445;      // posição vertical dentro do trapézio
  float espacamento = 42;  // distância entre teclas
  float diam = 32;         // tamanho das teclas

  // Calcula início da linha 1 para centralizar
  float totalWidth = (linha1.length - 1) * espacamento;
  float startX = centerX - totalWidth / 2;

  // Primeira linha (0–9)
  for (int i = 0; i < linha1.length; i++) {
    float x = startX + i * espacamento;
    float y = startY;
    drawKey(x, y, diam, linha1[i], i);
  }

  // Segunda linha (letras, incluindo W)
  for (int i = 0; i < linha2.length; i++) {
    float x = startX + i * espacamento; // mesma posição X — alinhadas verticalmente
    float y = startY + 42;              // segunda linha logo abaixo
    drawKey(x, y, diam, linha2[i], i + 10);
  }
}

void drawKey(float x, float y, float d, String label, int index) {
  // muda de cor apenas se estiver sendo pressionada
  if (teclaPressionada && teclaAtiva == index) {
    fill(rosaClaro);
  } else {
    fill(cinzaClaro);
  }

  stroke(cinzaEscuro);
  strokeWeight(2);
  ellipse(x, y, d, d);

  fill(branco);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(14);
  text(label, x, y);
}
