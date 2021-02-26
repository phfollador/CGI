//PEDRO HENRIQUE RIZZI
//TAREFA 10
//TRABALHANDO COM CÂMERA E PERSPECTIVA

//VARIÁVEIS UTILIZADAS


void setup(){
  size(800, 800, P3D);
  noStroke();
}

//FORMAS GEOMÉTRICAS A SEREM UTILIZADAS NO PROGRAMA
void caixa(int box1){
  box(box1);
}

void esfera(int sp3){
  sphere(sp3);
}

void perspectiva(){
  float camX = height/1.5;
  float visao = mouseX/float(width)*PI/1.5;
  float camY = camX / tan(visao/1.5);
  float aspecto = float(width)/float(height);
  
  if (mousePressed){
    aspecto = aspecto / 2.5;
  }
  
  perspective(visao, aspecto, camY/10.0, camY*10.0);
  translate(width/2+30, height/2, 0);
  rotateX(-PI/6);
  rotateY(PI/6 + mouseY/float(height) * PI);
} 

void formas(){
  fill(30, 228, 0);
  esfera(60);
  translate(0, -60, -85);

  fill(255, 255, 0);
  esfera(70);
  translate(0, -190, -90);

  fill(255, 105, 180);
  caixa(50);
  translate(0, 60, 0);

  fill(255, 20, 147);
  caixa(70);
  translate(0, 70, 0);

  fill(199, 32, 133);
  caixa(90);
  translate(0, 60, -85);

  fill(255, 255, 0);
  esfera(70);
  translate(0, 40, -85);

  fill(30, 228, 0);
  esfera(60);
  translate(0, 20, -80);
}

void draw(){
  lights();
  background(0, 0, 98);

  perspectiva(); //CHAMANDO A FUNÇÃO QUE VAI FAZER O EFEITO DE CÂMERA E PERSPECTIVA
  formas(); //CHAMANDO A FUNÇÃO QUE CRIA AS FORMAS GEOMÉTRICAS

}
