ArrayList<Germ> germs;

public class Germ {
  float x, y;
  float cy;
  PImage germ = loadImage("germ.png");
  
  Germ(float x, float y) {
    this.x = x;
    this.y = y;
    cy = 0;
  }
  
  void display() {
    if (y > cy) cy += 3;
  }
  
}
