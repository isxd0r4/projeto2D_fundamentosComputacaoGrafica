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

void setup() {
  size(800, 600);
}

void draw() {
  background(azul);
  
  // === Papel ===
  fill(papel);
  stroke(220);
  strokeWeight(2);
  rect(270, 15, 260, 240, 5);
  noStroke();

  // === Barrinha por onde sai o papel ===
  fill(cinzaEscuro);
  rect(252, 233, 300, 25, 5);
  fill(cinzaClaro);
  rect(250, 230, 300, 25, 5);
  fill(detalhes);
  rect(225, 230, 20, 25, 5);
  rect(555, 230, 20, 25, 5);
  
    // Para dar impressão de altura 
  fill(cinzaEscuro);
  beginShape();
  vertex(630, 400);
  vertex(680, 555);
  bezierVertex(680, 585, 680, 585, 655, 585); 
  vertex(145, 585);
  bezierVertex(120, 585, 120, 585, 120, 555); 
  vertex(170, 400);
  endShape(CLOSE);

  // === Parte superior ===
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

  // === Corpo lilás (rostinho) ===
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

  // === Base roxa inferior ===
  fill(roxo);
  beginShape();
  vertex(630, 400);
  vertex(680, 555);
  bezierVertex(680, 570, 680, 570, 655, 570); 
  vertex(145, 570); 
  bezierVertex(120, 570, 120, 570, 120, 555); 
  vertex(170, 400);
  endShape(CLOSE);

  // === Trapézio branco do teclado ===
  fill(branco);
  beginShape();
  vertex(610, 410); 
  vertex(660, 545); 
  bezierVertex(660, 555, 660, 555, 635, 555); 
  vertex(165, 555); 
  bezierVertex(140, 555, 140, 555, 140, 545); 
  vertex(190, 410); 
  endShape(CLOSE);

  // === Rostinho ===
  drawFace();

  // === Caixinha externa com botões ===
  drawControlBox();
}

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
  
  // === Boca ===
  fill(detalhes);
  rectMode(CENTER);
  rect(400, 375, 60, 4, 2);
  rectMode(CORNER);
}


void drawControlBox() {
  // Posição e tamanho da caixa (parte inferior na metade da tela)
  float x = 670;
  float y = 120;
  float w = 90;
  float h = 180;

  // === Fio conectando à parte traseira da máquina ===
  stroke(detalhes);
  strokeWeight(4);
  noFill();
  // Ajuste da curva do fio para acompanhar a nova posição
  bezier(616, 351, 640, 360, 650, 280, x, y + h *0.8);

  // === Sombra ===
  noStroke();
  fill(0, 40);
  rect(x + 5, y + 5, w, h, 15);

  // === Caixa ===
  fill(roxo);
  rect(x, y, w, h, 15);

  // === Botões centralizados verticalmente ===
  float cx = x + w / 2;
  float cyStart = y + h / 2 - 55; // começa acima do meio
  float diam = 40;
  float spacing = 55;

  drawButton(cx, cyStart, diam, "OFF");
  drawButton(cx, cyStart + spacing, diam, "Dig");
  drawButton(cx, cyStart + 2 * spacing, diam, "Text");
}



void drawButton(float x, float y, float d, String label) {
  fill(lilas);
  stroke(cinzaEscuro);
  strokeWeight(2);
  ellipse(x, y, d, d);
  
  fill(azul);
  noStroke();
  textAlign(CENTER, CENTER);
  textSize(14);
  text(label, x, y);
}
