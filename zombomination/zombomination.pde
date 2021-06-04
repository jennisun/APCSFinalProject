MenuPage zero;
LevelOne one;
String currPage;
PFont font;
Button lvl0;

void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "zero";
  zero = new MenuPage(0);
  one = new LevelOne();
  
  //if (currPage.equals("one")) lvl0 = new Button(100, 130, 180, 50, "Level One");
  lvl0 = new Button(100, 130, 180, 50, "Level One");
}

void draw() {
  if (currPage.equals("zero")) {
    background(16, 121, 99);
    zero.draw();
    
    
    lvl0.update();
    lvl0.display();
    if (lvl0.clickedOn) {
      currPage = "one";
    }
  }
  
  else {
    one.draw();
  }
 
  fill(0);
  textSize(20);
  //text("FPS: "+frameRate,0,40);

}

void mousePressed() {
  if (lvl0.hover() && !lvl0.clickedOn()) lvl0.clickedOn(true);
  if (currPage.equals("one")) one.mousePressed();
  
}

void keyPressed() {
}
