ArrayList<Germ> germs;
ArrayList<Germ> removeGerms;

public class Germ {
  float x, y;
  float cy;
  PImage img1 = loadImage("germ1.png");
  PImage img2 = loadImage("germ2.png");
  int pic, wait;
  boolean clickedOn;
  boolean kid;
  
  Germ(float x, float y) {
    this.x = x;
    this.y = y;
    cy = 0;
    pic = 1;
    wait = 0;
    
    img1.resize(50, 50);
    img2.resize(50, 50);
  }
  Germ(float x, float y, boolean k) {
    kid = k;
    this.x = x;
    this.y = y;
    cy = 0;
    pic = 1;
    wait = 0;
    
    img1.resize(50, 50);
    img2.resize(50, 50);
  }
  
  boolean display() {
    if (!clickedOn) {
      if (kid){
        if (y > cy) cy += 0.7;
        wait += 1;
        
        if (wait == 50) {
          if (pic == 1) pic = 2;
          else if (pic == 2) pic = 1;
          wait = 0;
        }
        
        else {
          if (pic == 1) image(img1, y, cy);
          else image(img2, y, cy);
        }
      }
      else{
        
      }
      return true;
    }
    else return false;
    
  }
  
  boolean hover() {
    if (dist(mouseX, mouseY, x + 65, cy + 25) < 25) return true;
    else return false;
  }
  
  void clickedOn(boolean hold) {
    clickedOn = hold;
  }
  
  boolean clickedOn() {
    return clickedOn;
  }
}
