void setup(){
  size(514, 827);
  PImage car = loadImage("zombie1.png");
  PImage output = car.copy();
  
  int numpixels = 15;
  
  for (int x = 0; x < car.width; x += numpixels) {
    for (int y = 0; y < car.height; y += numpixels) {
      float r = 0;
      float b = 0;
      float g = 0;
      for (int i = 0 ; i < numpixels; i ++) {
        for (int k = 0; k < numpixels; k ++) {
          r += red(car.get(x + i, y + k))/ (numpixels * numpixels);
          b += blue(car.get(x + i, y + k))/ (numpixels * numpixels);
          g += green(car.get(x + i, y + k))/ (numpixels * numpixels);
        }
      }
      for (int m = 0; m < numpixels; m ++) {
        for (int n = 0; n < numpixels; n ++) {
          output.set(x + m, y + n, color(r, g, b));
        }
      }
    }
  }
  
  image(output,0, 0);
  
}
