PImage img;
PImage img1;
PImage img2;

void setup(){
  size(850,850);
}

void espelharVertical(){
  int Xinicio, Xfim, Yinicio, Yfim;
  int H, L;
  
  img1 = loadImage("cafe.jpg");  

  loadPixels();
  
  L = img1.width;
  H = img1.height;
  
  //percorrendo a matriz da imagem
  for(Xinicio = 0, Xfim = L-1; Xinicio < L/2 || Xfim >= L/2; Xinicio++, Xfim--){
    for(Yinicio = 0, Yfim = L-1; Yinicio < H || Yfim >= L/2; Yinicio++, Yfim--){
      //espelhamento vertical
      int locC = Yinicio + Xinicio*L;
      int locD = Yinicio + Xfim*L;
      
      //trocando os pixels
      int aux2 = pixels[locC];
      pixels[locC] = pixels[locD];
      pixels[locD] = aux2;
    }
  }
  updatePixels();
  image(img,0,0,425,425);
}

void espelharHorizontal(){
  int Xinicio, Xfim, Yinicio, Yfim;
  int H, L;

  img = loadImage("cafe.jpg"); 

  loadPixels();
  
  L = img.width;
  H = img.height;
  
  //percorrendo a matriz da imagem
  for(Xinicio = 0, Xfim = L-1; Xinicio < L/2 || Xfim >= L/2; Xinicio++, Xfim--){
    for(Yinicio = 0, Yfim = L-1; Yinicio < H || Yfim >= L/2; Yinicio++, Yfim--){
      //espelhamento horizontal
      int locA = Xinicio + Yfim*L;
      int locB = Xfim + Yfim*L;
      
      //trocando os pixels
      int aux1 = pixels[locA];
      pixels[locA] = pixels[locB];
      pixels[locB] = aux1;
    }
  }
  updatePixels();
  image(img,0,270,0,0); 
}

void draw(){
  img = loadImage("cafe.jpg");
  espelharVertical();
  espelharHorizontal();
  image(img,0,0,425,425); 
  //updatePixels();
  save("inversões.png");
  
}
