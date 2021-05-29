ArrayList<Button> buttons;

public class Button{
  boolean hover = false;
  float x, y, w, h;
  PImage img;
  
  public Button(float xcor, float ycor, float wt, float ht, String name) {
    x = xcor;
    y = ycor;
    w = wt;
    h = ht;
    img = loadImage(name);
  }
  
  void update() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) hover = true;
    else hover = false;
  }
  
  
  void display() {
    img.resize((int) w, (int) h);
    image(img,x,y);
    if (hover) {
      fill(255, 255, 255, 30);
      rect(x, y, w, h);
    }
  }
  
  
  
  
  
}
