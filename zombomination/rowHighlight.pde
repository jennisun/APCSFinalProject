ArrayList<rowHighlight> rowHighlights;

public class rowHighlight{
  boolean hover;
  boolean clickedOn;
  float x, y, w, h;
  String type;
  
  public rowHighlight (float xcor, float ycor, float wt, float ht, String t) {
    type = t;
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
      for (Button b: buttons) {
        if (b.clickedOn) {
          if (coronavirus - b.cost() >= 0) {
            coronavirus -= b.cost();
            //if (b.x == 330 || b.x ==430){
            //  stuyKids.add(new stuyKid(x + w - 100, y, b.type));
            //}else{
              zombies.add(new Zombie(x + w - 100, y, b.type));
            //}
          }
          clickedOn = false;
          hover = false;
          b.clickedOn(false);
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
