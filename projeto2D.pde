color azul = color(189, 213, 213);
color amareloClaro = color(255, 246, 206);
color amarelo = color(254, 193, 110);
color amareloEscuro = color(232, 159, 81);
color rosa = color(241, 190, 194);
color rosaClaro = color(252, 225, 229);
color cinza = color(197, 178, 163);
color bege = color(231, 207, 181);

void setup() {
  size(600, 600);
}

void draw() {
  fill(amarelo);
  beginShape();
  vertex(100, 350);
  vertex(100, 550);
  bezierVertex(105, 575, 115,575, 115, 575 );
  vertex(115, 575);
  vertex(500, 575);
  vertex(500, 350);
  vertex(485, 250);
  vertex(115, 250);
  endShape(CLOSE); 
}
