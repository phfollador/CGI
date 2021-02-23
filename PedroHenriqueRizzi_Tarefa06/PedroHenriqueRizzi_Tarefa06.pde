//PEDRO HENRIQUE RIZZI FOLLADOR
//MAPEAMENTO REVERSO

PImage img, imgRotacionada;

void setup(){
  size(600, 300);
  img = loadImage("imagem.jpg");
  imgRotacionada = mapeamentoReverso(img, radians(33));
}

void draw(){
  image(img, 0, 0);
  image(imgRotacionada, 300, 0);
  save("ImagemRotacionada.png");
}

PVector transformaCoordenadas(PVector v, float theta){
  PVector l = new PVector(0,0);
  float cosTheta = cos(theta), senTheta = sin(theta);
  
  l.x = (v.x * cosTheta) + (v.y * senTheta);
  l.y = (-v.x * senTheta) + (v.y * cosTheta);
  
  return l;
}

PVector calculaParametro(PVector corX, PVector corY, float d){
    PVector param = new PVector(0, 0, 0);
    
    param.add(corX);
    param.mult(-1);
    param.add(corY);
    param.mult(d);
    param.add(corX);
    
    return param;
}

//APLICA A ROTAÇÃO COM A TÉCNICA DE MAPEAMENTO REVERSO
PImage mapeamentoReverso(PImage img, float theta){
  
  PImage imgOriginal = createImage(img.width, img.height, RGB);
  
  imgOriginal.loadPixels();
  img.loadPixels();
  
  int altura = img.height;
  int largura = img.width;
  int pos;
  int borda = 3;
  
  PVector linha, P;
  
  float deltaColuna, deltaLinha;
  
  color A, B, C, D;
  PVector corA, corB, corC, corD;
  
  for(int x = borda; x < largura-borda; x++){
    for(int y = borda; y < altura-borda; y++){
        float x_t = x - largura*0.5;
        float y_t = y - altura*0.5;
        
        pos = y * largura + x;
        P = new PVector(x_t, y_t);
        
        linha = transformaCoordenadas(P, -theta);
        
        linha.x = linha.x +  altura*0.5;
        linha.y = linha.y +  altura*0.5;       
        
        //TRANSFOROMADA DE HOOK
        deltaColuna = linha.x - int(linha.x);
        deltaLinha = linha.y - int(linha.y);
        
        int posX = int(linha.x), posY = int(linha.y);
        
        //GUARDANDO OS SIDE_PIXELS
        A = img.get(posX, posY );
        B = img.get(posX + 1, posY);
        C = img.get(posX, posY + 1);
        D = img.get(posX + 1, posY + 1);
        
        corA = new PVector(red(A), green(A), blue(A));
        corB = new PVector(red(B), green(B), blue(B));
        corC = new PVector(red(C), green(C), blue(C));
        corD = new PVector(red(D), green(D), blue(D));        
        
        PVector ctrlAB, ctrlCD, pX;
        
        ctrlAB = calculaParametro(corA,corB, deltaColuna);
        ctrlCD = calculaParametro(corC,corD, deltaColuna);
        
        pX = calculaParametro(ctrlAB,ctrlCD, deltaLinha);
        
        imgOriginal.pixels[ pos ] = color( pX.x, pX.y, pX.z );
    }
  }
  
  imgOriginal.updatePixels();
  
  return imgOriginal;
}
