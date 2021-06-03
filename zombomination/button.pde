ArrayList<Button> buttons;

public class Button{
  boolean hover, clickedOn;
  int cost;
  float x, y, w, h;
  PImage img;
  String text;
  PFont font = createFont("Minecraftia", 10);
  
  public Button(float xcor, float ycor, float wt, float ht, String name) {
    x = xcor;
    y = ycor;
    w = wt;
    h = ht;
    text = name;
    
    hover = false;
    clickedOn = false;
  }
  
  public Button(float xcor, float ycor, float wt, float ht, String name, int money) {
    x = xcor;
    y = ycor;
    w = wt;
    h = ht;
    img = loadImage(name);
    cost = money;
    
    hover = false;
    clickedOn = false;
  }
  
  void update() {
    if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) hover = true;
    else hover = false;
  }
  
  
  void display() {
    if (img != null) {
      img.resize((int) w, (int) h);
      image(img,x,y);
    }
    
    if (text != null) {
      textFont(font);
      fill(255);
      text(text, 12, 60);
    }
    
    if (hover) {
      fill(255, 255, 255, 30);
      rect(x, y, w, h);
    }
    
    if (clickedOn) {
      fill(255, 255, 255, 60);
      rect(x, y, w, h);
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
  
  int cost() {
    return cost;
  }

}
