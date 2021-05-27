ArrayList<Pea> peas;

public class Pea{
  float x, y;
  boolean colliding;
  
  Pea(float x, float y) {
    this.x = x;
    this.y = y;
    colliding = false;
  }
  
  void move() {
    x += 10;
  }
  
  void display() {
    PImage pea = loadImage("pea.png");
    pea.resize(25, 25);
    image(pea, x, y);
  }
  
}
