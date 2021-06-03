public MenuPage menu;
  MenuPage one;
  
  void setup() {
    size(800, 700);
    background(16, 121, 99);
    one = new MenuPage(0);
  }
  
  void draw() {
    background(16, 121, 99);
    one.draw();
    
    fill(0);
    textSize(20);
    text("x:  "+mouseX + " y: " + mouseY,0,20);
  }
