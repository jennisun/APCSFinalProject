ArrayList<Shroom> shrooms;

public class Shroom{
  float x, y, originalX;
  boolean colliding;
  PImage shroom = loadImage("shroom.png");
  boolean alive;
  
  Shroom(float x, float y) {
    this.x = x;
    this.y = y;
    originalX = x;
    colliding = false;
    alive = true;
  }
  
  void move() {
    x += 3;
  }
  
  void display() {
    if (alive){
      shroom.resize(25, 25);
      image(shroom, x, y);
    }
  }
  
  float getx() {
    return x;
  }
  
  float getdist() {
    return x - originalX;
  }
  
}
