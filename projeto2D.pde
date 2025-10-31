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
}

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
}


void drawControlBox() {

  //Fio
  stroke(detalhes);
  strokeWeight(4);
  noFill();
  bezier(616, 351, 640, 360, 650, 280, 670, 264);

  //Sombra
  noStroke();
  fill(0, 40);
  rect(675, 125, 90, 180, 15);

  //Caixa
  fill(roxo);
  rect(670, 120, 90, 180, 15);


  drawButton(715, 155, 40, "OFF");
  drawButton(715, 210, 40, "D");
  drawButton(715, 265, 40, "T");
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
