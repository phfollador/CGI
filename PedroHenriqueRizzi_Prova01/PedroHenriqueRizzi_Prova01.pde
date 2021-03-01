//PROVA 01
//ALUNO: Pedro Henrique Rizzi Follador
//DATA: 26 de outubro de 2020

//DECLARANDO O OBJETO DE TIPO FONTE
PFont f;
PImage img;

void setup(){
  size(700, 500); //DEFININDO O PLANO DA IMAGEM
  f = createFont("Arial", 16, true);
  img = loadImage("BandeiraOriginal.png");
  strokeWeight(4);
}

//1ª opção: CRIAÇÃO DA BANDEIRA E DANDO A OPÇÃO DE NENHUM BOTÃO DO MOUSE PRESSIONADO
void fundo(){
  //FUNDO VERDE DA BANDEIRA
  background(255); //DEFINIDO A COR BRANCA DE FUNDO DA JANELA
  stroke(255); //DEFININDO A COR DA BORDA
  fill(0, 150, 0); //DEFININDO A COR DO RETÂNGULO QUE FORMA O FUNDO DA BANDEIRA
  rect(4, 4, 692, 492); //DEFININDO O RETÂNGULO DA BANDEIRA  
}

//LOSANGO DA BANDEIRA
float L = 700; //LARGURA DA BANDEIRA
float H = 500; //ALTURA DA BANDEIRA
void losango(int x, int y, float L){
  float x1, x2, x3, x4, y1, y2, y3, y4;
  //PT1(X1, Y1)
  x1 = x + (L/2);
  y1 = y + (H * 1/8);
  
  //PT2(X2, Y2)
  x2 = x + (L * 1/8);
  y2 = y + (H/2);
  
  //PT3(X3, Y3)
  x3 = x + (L/2);
  y3 = y + (H - (H*1/8));
  
  //PT4(X4, Y4)
  x4 = x + (L - (L*1/8));
  y4 = y + (H/2);  
  
  stroke(255, 255, 0); //DEFININDO A COR DA BORDA DO LOSANGO
  fill(255, 255, 0); //PREENCHENDO O LOSANGO COM A COR AMARELA
  quad(x1, y1, x2, y2, x3, y3, x4, y4); //DESENHANDO UM QUADRADO COM OS PARÂMETROS DOS PONTOS CALCULADOS
}

//FUNÇÃO QUE DESENHA A ELIPSE CENTRAL DA BANDEIRA
void circulo(int x, int y, float l, float H){
  stroke(0,0,100); //DEFININDO A COR DA BORDA DA ELIPSE
  fill(0,0,100); //COLORINDO A ELIPSE
  ellipse(x+l/2, y+H/2, H*7/14 , H*7/14); //DESENHANDO A ELIPSE
}
  
//FUNÇÃO QUE UNE TODOS OS COMPONENTES DA BANDEIRA
void mostraBandeira(int x, int y, float l){
  fundo(); //CHAMANDO A FUNÇÃO QUE DESENHA O FUNDO VERDE DA BANDEIRA
  losango(x, y, l); //CHAMANDO A FUNÇÃO QUE CRIA O LOSANGO DA BANDEIRA
  circulo(x, y, l, 500); //CHAMANDO FUNÇÃO QUE CRIA O CIRCULO NA BANDEIRA
  textFont(f, 20);
  fill(255, 255, 0);
  text("ORDEM e PROGRESSO", 245, 260); //ESCREVE O TEXO NA ELIPSE
}

//FUNÇÃO QUE INVERTE AS CORES
//2ª opção: ESTA OPÇÃO SERÁ ACIONADA CASO O USUÁRIO USAR O BOTÃO ESQUERDO DO MOUSE
void inverteCores(PImage img){
  loadPixels();
  img.loadPixels();
  for(int i = 0; i < width; i++){ //PERCORRE A IMAGEM NO SENTIDO HORIZONTAL
     for(int j = 0; j < height; j++){ //PERCORRE A IMAGEM NO SENTIDO VERTICAL
        int p = i + j * width;
        
        //INVERTENDO AS CORES
        float vermelho = 255 - red(img.pixels[p]);
        float verde = 255 - green(img.pixels[p]);
        float azul = 255 - blue(img.pixels[p]);
        
        pixels[p] = color(vermelho, verde, azul);
      }
  }
  updatePixels(); //ATUALIZA A MATRIZ DE PIXELS COM AS CORES INVERTIDAS
}

//FUNÇÃO QUE DESLOCA A BANDEIRA
//3ª opção: ESTA OPÇÃO SERÁ ACIONADA CASO O USUÁRIO USAR O BOTÃO DIREITO DO MOUSE
void deslocaBandeira(int x, int y, float l){  
  fundo(); //CHAMANDO A FUNÇÃO QUE DESENHA O FUNDO VERDE DA BANDEIRA
  losango(x, y, l); //CHAMANDO A FUNÇÃO QUE CRIA O LOSANGO DA BANDEIRA
  circulo(x, y, l, 500); //CHAMANDO FUNÇÃO QUE CRIA O CIRCULO NA BANDEIRA
  textFont(f, 20);
  fill(255, 255, 0);
  text("ORDEM E PROGRESSO", 245+x, 260+y); //ESCREVE O TEXO NA ELIPSE
  save("BandeiraDeslocada.png");
}

//FUNÇÃO QUE CRIA O DEGRADÊ
//4ª opção: ESTA OPÇÃO SERÁ ACIONADA CASO O USUÁRIO USAR PRESSIONAR A TECLA T NO TECLADO
void transparencia(int x, int y, float l, float H){
  fundo(); //CHAMANDO A FUNÇÃO QUE DESENHA O FUNDO VERDE DA BANDEIRA
  losango(x, y, l); //CHAMANDO A FUNÇÃO QUE CRIA O LOSANGO DA BANDEIRA  
  
  stroke(#000076, 0); //DEFININDO A COR DA BORDA DA ELIPSE
  fill(#000076, 200); //COLORINDO A ELIPSE
  ellipse(x+l/2, y+H/2, H*7/14 , H*7/14); //DESENHANDO A ELIPSE  
  
  stroke(#000076, 0); //DEFININDO A COR DA BORDA DA ELIPSE 
  fill(#000076, 75); //COLORINDO A ELIPSE
  ellipse(x+l/2, y+H/2, H*7/18 , H*7/18); //DESENHANDO A ELIPSE
  
  stroke(#000076, 255); //DEFININDO A COR DA BORDA DA ELIPSE
  fill(#000076, 255); //COLORINDO A ELIPSE
  ellipse(x+l/2, y+H/2, H*7/26 , H*7/26); //DESENHANDO A ELIPSE
  
  textFont(f, 20);
  fill(255, 255, 0);
  text("ORDEM", 320, 165); //ESCREVE O TEXO NA ELIPSE
  text("E", 350, 260); //ESCREVE O TEXO NA ELIPSE
  text("PROGRESSO", 290, 355); //ESCREVE O TEXO NA ELIPSE
  
  save("BandeiraTransparencia.png"); //SALVA A IMAGEM DA BANDEIRA COM O DEGRADÊ NO FORMATO .png
}

void draw(){
  mostraBandeira(5, 5, 700); //DESENHA A BANDEIRA NA TELA
  save("BandeiraOriginal.png"); //SALVA EM FORMATO .png A IMAGEM DA BANDEIRA ORIGINAL
  img = loadImage("BandeiraOriginal.png"); //ABRE A IMAGEM ORIGINAL DA BANDEIRA PARA SER UTILIZADA NA INVERSÃO
  
  if(mousePressed){
    //CONDIÇÃO QUE CHECA SE AS CORES DA BANDEIRA SERÃO INVERTIDAS
    if(mouseButton == LEFT){
      inverteCores(img);
      save("BandeiraInvertida.png"); //SALVA A IMAGEM DA BANDEIRA COM AS CORES INVERTIDAS NO FORMATO .png
      print("CORES INVERTIDAS\n");
    }
    //CONDIÇÃO QUE CHECA SE O CENTRO DA BANDEIRA SERÁ DESLOCADO
    else if(mouseButton == RIGHT){
      deslocaBandeira(80, 5, 700);
      print("BANDEIRA DESLOCADA\n");
    }
    
  //CONDIÇÃO QUE CHECA SE O USUÁRIO PRESSIONOU A TECLA T
  }else if(keyPressed){
    if(key == 't' || key == 'T'){      
      transparencia(5, 5, 700, 500);
      print("DEGRADÊ\n");
    } 
  
  //PARA CASO O USUÁRIO NÃO ENTRE COM NENHUM COMANDO VÁLIDO
  }else{
    fill(0);
    print("COMANDO INVÁLIDO\n");
  }
} //<>//
