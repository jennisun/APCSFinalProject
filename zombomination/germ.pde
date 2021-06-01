ArrayList<Germ> germs;

public class Germ {
  float x, y;
  float cy;
  PImage img1 = loadImage("germ1.png");
  PImage img2 = loadImage("germ2.png");
  int pic, wait;
  
  Germ(float x, float y) {
    this.x = x;
    this.y = y;
    cy = 0;
    pic = 1;
    wait = 0;
  }
  
  void display() {
    if (y > cy) cy += 0.7;
    wait += 1;
    
    if (wait == 50) {
      if (pic == 1) pic = 2;
      else if (pic == 2) pic = 1;
      wait = 0;
    }
    
    else {
      if (pic == 1) {
        img1.resize(50, 50);
        image(img1, y, cy);
      }
      else {
        img2.resize(50, 50);
        image(img2, y, cy);
      }
    }
  }
  
}
