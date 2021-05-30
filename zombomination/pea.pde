ArrayList<Pea> peas;

public class Pea{
  float x, y;
  boolean colliding;
  PImage pea = loadImage("pea.png");
  
  Pea(float x, float y) {
    this.x = x;
    this.y = y;
    colliding = false;
  }
  
  void move() {
    x += 2;
  }
  
  void display() {
    pea.resize(25, 25);
    image(pea, x, y);
  }
  
  float getx() {
    return x;
  }
 
  
}
