ArrayList<rowHighlight> rowHighlights;

public class rowHighlight extends Button{
  boolean hover;
  boolean clickedOn;
  float x, y, w, h;
  
  public rowHighlight (float xcor, float ycor, float wt, float ht) {
    super(xcor, ycor, wt, ht);
  }
  
  void update() {
    super.update();
  }
  
  void display() {
    if (hover) {
      fill(255, 255, 255, 30);
      rect(x, y, w, h);
    }
    if (clickedOn) {
      zombies.add(new Zombie(600, 150));
      hover = false;
    }
  }
  
  
  
}
