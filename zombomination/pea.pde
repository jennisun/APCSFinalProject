ArrayList<Pea> peas;
ArrayList<Pea> removePeas;

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
  
  boolean display() {
    //boolean once is to make sure the pea only hits ONE zombie
    boolean once = false;
    for (Zombie z: zombies) {
      if (!once && z.getY() == y && z.getX() - x < 50) {
        colliding = true;
        z.howAlive -= 1000;
        z.pause = true;
        once = true;
      }
    }
    
    if (!colliding) {
      pea.resize(25, 25);
      image(pea, x + 80, y + 20);
      return true;
    }
    return false;
  }
  
  float getx() {
    return x;
  }
 
  
}
