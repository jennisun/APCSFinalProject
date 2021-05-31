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
    boolean once = false;
    for (Zombie z: zombies) {
      if (!once && !z.pause && dist(x, y, z.getX(), z.getY()) < 30) {
        colliding = true;
        z.howAlive -= 100;
        z.hit ++;
        z.pause = true;
        once = true;
      }
    }
    
    if (!colliding) {
      pea.resize(25, 25);
      image(pea, x, y);
    }
  }
  
  float getx() {
    return x;
  }
 
  
}
