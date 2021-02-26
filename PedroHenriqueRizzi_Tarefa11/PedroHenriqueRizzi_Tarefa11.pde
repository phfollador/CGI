//PEDRO HENRIQUE RIZZI
//TAREFA 11
//TRABALHANDO COM RECURSOS Shape e PShape

void setup(){
  size(1200, 1000, P3D);
}

void perspectiva(){
  float cameraY = height/2.0;
  float fov = 330/float(width) * PI ;
  float cameraZ = cameraY / tan(fov / 2.0);
  float aspect = float(width)/float(height);
  
  perspective(fov, aspect, cameraZ/40.0, cameraZ*40.0);
  translate(width/2+90, height/4, 0);
}

void rotat(){
  rotateX(mouseX/float(height)*PI/2);  
  rotateZ((150+mouseY)/float(height)*PI*2);
}

void arvores(){
  noStroke();
  
  //ARBUSTO
  translate(0,350,-300);
  beginShape(TRIANGLE_STRIP);
  fill(57,255,20);
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(0, 0, 100);
  vertex(100, -100, -100);
  vertex(100, 100, -100);
  vertex(0, 0, 100);
  vertex(100, 100, -100);
  vertex(-100, 100, -100);
  vertex(0, 0, 100);
  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(0, 0,  100);
  endShape();
  
  //TRONCO
  fill(151,105,79);
  translate(0,0,-100);
  box(50,50,300);
  
  //ARBUSTO
  translate(0,350,100);
  beginShape(TRIANGLE_STRIP);
  fill(57,255,20);
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(0, 0, 100);
  vertex(100, -100, -100);
  vertex(100, 100, -100);
  vertex(0, 0, 100);
  vertex(100, 100, -100);
  vertex(-100, 100, -100);
  vertex(0, 0, 100);
  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(0, 0,  100);
  endShape();
  
  //TRONCO
  fill(151,105,79);
  translate(0,0,-100);
  box(50,50,300);
}

void predio(){
  fill(8,77,110);
  translate(-100,-1200,270);
  box(500,500,1000);
  
  fill(0);
  translate(0,100,230);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(301,15,80);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,-200,0);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  box(510, 180,90);
  fill(255);
  translate(0,200,0);
  endShape();  
  
  translate(-200,0,-860);
  fill(71, 74, 81);
  box(5000,10000,0);
}

void predio2(){
  fill(255,105,97);
  translate(150,-700,270);
  box(500,500,1000);
  
  fill(0);
  translate(0,100,230);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(301,15,80);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,-200,0);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  box(510, 180,90);
  fill(255);
  translate(0,200,0);
  endShape();  
}

void predio3(){
  fill(255,105,255);
  translate(0,-700,-80);
  box(500,500,1500);
  
  fill(0);
  translate(0,100,230);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(301,15,80);
  fill(0);
  translate(0,0,-130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,-200,0);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  translate(0,0,130);
  box(510, 180,90);
  fill(255);
  box(510, 180,90);
  fill(0);
  box(510, 180,90);
  fill(255);
  translate(0,200,0);
  endShape();  
}

void carro(){
  fill(255,0,0);
  translate(800,400,-900);
  box(300,300,500);
  
  translate(0,90,0);
  box(300,300,300);
  
  translate(0,-300,0);
  box(300,500,200);
  
  translate(0,280,200);
  fill(0);
  box(310, 180,90);
  
  rotateY(190);
  translate(0,-140,160);
  fill(0);
  ellipse(200,200,200,200);
  
  translate(0,-400,0);
  fill(0);
  ellipse(200,200,200,200);
}

void draw(){
  background(173, 216, 255);
  
  camera(-5000.0, -800.0, -500.0, 200.0, 200.0, 200.0, 0.0, 3.0, 0.0);
  
  lights();
  
  perspectiva();
  rotat();
  
  arvores();
  predio(); 
  predio2();
  predio3();
  carro();
}
