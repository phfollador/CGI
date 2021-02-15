PImage img;
void setup(){
  noLoop();
  size(400, 400);
  img = loadImage("imagem.png");
}

void draw(){
  loadPixels();
  img.loadPixels(); //CARREGA TODOS OS PIXELS DA IMAGEM
  
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
  save("invertida.png"); //SALVA A NOVA IMAGEM COM AS CORES INVERTIDAS
}
