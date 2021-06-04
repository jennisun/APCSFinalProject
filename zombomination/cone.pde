ArrayList<cone> cones;


public class cone extends Zombie{
  PImage zb = loadImage("conezom.png");
  cone(float x, float y){
    this.x =x;
    this.y =y;
    isWalking = true;
    howAlive = 8000;
  }
  boolean display(){
    if (howAlive > 0){
      noStroke();
      zb.resize(80, 80);
      image(zb, x, y);
      if (isWalking && !eating){
        move();
      }
      
      //health bar
      fill(0, 255, 48);
      rect(x + 23, y - 20, 30, 10);
      fill(255, 255, 255);
      rect(x + 23, y - 20, (float) 30 * (10000 - howAlive) / 10000, 10);
      return true;
    }
    return false;
  }

  
}
