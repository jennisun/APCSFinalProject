ArrayList<rowHighlight> rowHighlights;

public class rowHighlight{
  boolean hover;
  boolean clickedOn;
  float x, y, w, h;
  
  public rowHighlight (float xcor, float ycor, float wt, float ht) {
    x = xcor;
    y = ycor;
    w = wt;
    h = ht;
    
    hover = false;
    clickedOn = false;
  }
  
  void update() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) hover = true;
    else hover = false;
  }
  
  void display() {
    if (hover) {
      fill(255, 255, 255, 30);
      rect(x, y, w, h);
    }
    if (clickedOn) {
      zombies.add(new Zombie(x + w - 100, y));
      clickedOn = false;
      hover = false;
      for (Button b: buttons) {
        if (b.clickedOn) {
          b.clickedOn(false);
          //coronavirus -= b.cost();
        }
      }
    }
  }
  
  boolean hover() {
    return hover;
  }
  
  void clickedOn(boolean hold) {
    clickedOn = hold;
  }
  
  boolean clickedOn() {
    return clickedOn;
  }
  
}
