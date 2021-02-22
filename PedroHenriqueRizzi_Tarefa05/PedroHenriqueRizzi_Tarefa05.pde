PImage img;

void setup(){
  size(300, 300);
  img = loadImage("imagem.jpg");
}

void draw(){
  loadPixels();
  img.loadPixels();
  
  float angulo = radians(33);
  float xL, yL;
  
  for(int y = 0; y < height; y++){
    for(int x = 0; x < width; x++){
      xL = (((x - width/2) * cos(angulo)) + (y - height/2) * (-sin(angulo)));
      yL = (((x - width/2) * sin(angulo)) + ((y - height/2) * cos(angulo)));
      
      xL = xL + height/2;
      yL = yL + width/2;
      
      int rot = int(xL) + int(yL)*width;
      if(xL >= 0 && xL < width && yL >= 0 && yL < height) pixels[rot] = img.pixels[x + y*width];
    }
  }
  updatePixels();
  save("ImagemRotacionada.png");
}
