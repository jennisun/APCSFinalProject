ArrayList<cone> cones;
PImage zb = loadImage("conezom.png");

public class cone extends Zombie{
  
  cone(float x, float y){
    this.x =x;
    this.y =y;
    isWalking = true;
    howAlive = 8000;
  }
  
}
