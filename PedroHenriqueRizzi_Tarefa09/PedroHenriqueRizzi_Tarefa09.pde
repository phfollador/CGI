PImage img, img2;
float offset = 0;
float easing = 0.05;
int distancia = width+1200;
int j = 0;

void setup(){
  //PLANO DA IMAGEM
  background(180, 180, 180);
  size(1400,1000, P3D);
  
  //PLANO DE FUNDO MONTANHAS
  img = loadImage("montanha.png");
  img2 = loadImage("cartman.png");
}

void arvore(){ 
  //FUNÇÕES SOLICITADAS PARA IMPLEMENTAÇÃO NA TAREFA 09  
  lights(); 
  ambientLight(mouseX/8, mouseX/8, mouseX/8, mouseX, mouseY, -2);
  directionalLight(250, 250, 250, 0, 0, -3);
  
  //TRONCO DA ÁRVORE
  fill(150,75,0);  
  rect(150,860,80,200);
  
  lights();
  pointLight(51, 250, 250, 190, 750, 5);
  ambientLight(mouseX/8, mouseX/8, mouseX/8, mouseX, mouseY, -2);
  
  //FOLHAS DA ÁRVORE
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

void predio(){
  //FUNÇÕES SOLICITADAS PARA IMPLEMENTAÇÃO NA TAREFA 09
  lights();
  ambientLight(mouseX/8, mouseX/8, mouseX/8, mouseX, mouseY, -2);
  
  //MONTANDO O PREDIO
  parede_predio(); 
  porta_predio();
  janelas_predio();
}

void ambiente(){
  //FUNÇÕES SOLICITADAS PARA IMPLEMENTAÇÃO NA TAREFA 09
  lights();
  ambientLight(mouseX/8, mouseX/8, mouseX/8, mouseX, mouseY, -2);
  spotLight(51, 102, 126, 70, 70, 5, 0, 0, -2, PI/8, 6000); 
  
  //SOL
  ellipse(70,70,270,270);
  
  //NUVENS
  fill(0,127,255);
  ellipse(330,70,240,80);
  ellipse(380,150,240,80);
  ellipse(1300,120,240,70);
}

void draw(){
  img.resize(2500, 900);
  image(img,offset,100);
    
  //DESENHANDO O PREDIO
  arvore(); 
  predio();
  ambiente();
  
  noFill();
  noTint();
  img2.resize(150, 150);
  image(img2, distancia--, 880);
  
  if(abs((mouseX+mouseY)/2 - (pmouseX+pmouseY)/2) > 10){ 
    int i = j/200;
    save("Tarefa-09_img["+str(i)+"].png");
  }
  j = j + 1;
}
