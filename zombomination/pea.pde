ArrayList<Pea> peas;

public class Pea{
  float x, y;
  boolean colliding;
  PImage pea = loadImage("pea.png");
  boolean alive;
  
  Pea(float x, float y) {
    this.x = x;
    this.y = y;
    colliding = false;
    alive = true;
  }
  
  void move() {
    x += 2;
  }
  
  void display() {
    if (alive){
      pea.resize(25, 25);
      image(pea, x, y);
    }
  }
  
  float getx() {
    return x;
  }
 
  
}
