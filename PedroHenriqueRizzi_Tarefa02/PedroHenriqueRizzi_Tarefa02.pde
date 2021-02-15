PImage img;
float offset = 0;
float easing = 0.05;

void setup(){
  //PLANO DA IMAGEM
  background(180, 180, 180);
  size(1400,1000, P3D);
  
  //PLANO DE FUNDO MONTANHAS
  img = loadImage("montanha.png");
  tint(255,127);
  image(img,offset,500);
}

void arvore(){
  //TRONCO DA ÁRVORE
  fill(150,75,0);
  rect(150,800,80,200);
  
  //FOLHAS DA ÁRVORE
  directionalLight(0, 180, 0, 0, 1, 0);
  fill(0,128,0);
  ellipse(190,750,270,220);
}

void parede_predio(){
   //PAREDE DO PRÉDIO
  fill(8,77,110);
  rect(500,10,650,1200);
}
  
void porta_predio(){
  //PORTA
  fill(184,115,51);
  rect(685,800,300,200);
  line(840,800,840,1000);
  fill(255,219,88);
  ellipse(850,910,10,10);
  fill(255,219,88);
  ellipse(829,910,10,10);
}
  
void janelas_predio(){ 
  //JANELAS
  fill(255,219,88);
  rect(560,600,200,100);
  line(660,600,660,700);
  
  fill(255,219,88);
  rect(890,600,200,100);
  line(990,600,990,700);
  
  fill(255,219,88);
  rect(560,470,200,100);
  line(660,470,660,570);
  
  fill(0,0,0);
  rect(890,470,200,100);
  line(990,470,990,570);
  
  fill(0,0,0);
  rect(560,340,200,100);
  line(660,340,660,400);
  
  fill(255,219,88);
  rect(890,340,200,100);
  line(990,340,990,440);
  
  fill(255,219,88);
  rect(560,210,200,100);
  line(660,210,660,310);
  
  fill(0,0,0);
  rect(890,210,200,100);
  line(990,210,990,310);
  
  fill(255,219,88);
  rect(560,80,200,100);
  line(660,80,660,180);
  
  fill(255,219,88);
  rect(890,80,200,100);
  line(990,80,990,180);
}

void ambiente(){  
  //SOL
  ellipse(70,70,270,270);
  
  //NUVENS
  fill(135,206,235);
  ellipse(290,70,240,80);
  ellipse(380,130,240,80);
  ellipse(1300,120,240,70);
}

void draw(){
  //DESENHANDO O PREDIO    
  pointLight(500, 800, mouseX, mouseY, 200,200);
  arvore();
  
  spotLight(mouseX, mouseY, mouseX, mouseY, 120, 240, -1, 0, 0, PI/2, 2);
  parede_predio();
  
  directionalLight(mouseX, mouseY, 255, 0, 0, -4);
  porta_predio();
  
  pointLight(mouseX, mouseY, mouseX, mouseY, 200, 200);
  janelas_predio();

  ambientLight (255, 235, 500);
  ambiente();

  saveFrame("predio-##.png");
}
