MenuPage zero;
LevelOne one;
String currPage;
PFont font;
Button lvl1;

void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "one";
  zero = new MenuPage(0);
  one = new LevelOne();
  
  lvl1 = new Button(100, 130, 180, 50, "Level One");
}

void draw() {
  if (currPage.equals("zero")) {
    background(16, 121, 99);
    zero.draw();
    
    lvl1.update();
    lvl1.display();
    if (lvl1.clickedOn) {
      currPage = "one";
    }
  }
  
  else {
    one.draw();
    if (one.currPage().equals("menu")) currPage = "zero";
  }
 
  fill(0);
  textSize(20);
  //text("FPS: "+frameRate,0,40);

}

void mousePressed() {
  if (lvl1.hover() && !lvl1.clickedOn()) lvl1.clickedOn(true);
  if (currPage.equals("one")) one.mousePressed();
}

void keyPressed() {
}
