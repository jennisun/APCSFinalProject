MenuPage zero;
LevelOne one;
LevelTwo two;
String currPage;
PFont font;
Button lvl1, lvl2;

//Level stuff
//int[][] xgrid;
//int[][] ygrid;
//PImage bg;
//int tick = 0;
int coronavirus = 500;
//int pointer = 0;


void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "zero";
  zero = new MenuPage(0);
  one = new LevelOne();
  two = new LevelTwo();
  
  lvl1 = new Button(100, 130, 180, 50, "LEVEL ONE");
  lvl2 = new Button(520, 130, 180, 50, "LEVEL TWO");
}

void draw() {
  if (currPage.equals("zero")) {
    background(16, 121, 99);
    zero.draw();
    
    lvl1.update();
    lvl1.display();
    lvl2.update();
    lvl2.display();
    
    //if (lvl1.clickedOn) currPage = "one";
    //if (lvl2.clickedOn) currPage = "two";
  }
  
  if (currPage.equals("one")) {
    if (!one.update()) one.draw();
    else one.gameOver();
  }
    
    
    fill(255);
    textSize(15);
    //text(one.update(), 20, 600);
 
  if (currPage.equals("two")) {
    if (!two.update()) two.draw();
    else two.gameOver();
  }
  
}


void mousePressed() {
  if (lvl1.hover() && !lvl1.clickedOn()) {
    lvl1.clickedOn(false);
    currPage = "one";
  }
  if (lvl2.hover() && !lvl2.clickedOn()) {
    lvl2.clickedOn(false);
    currPage = "two";
  }
  
  if (currPage.equals("one")) one.mousePressed();
  if (currPage.equals("two")) one.mousePressed();
}

void keyPressed() {
  if (key == CODED) {
    if (currPage.equals("zero")) {
      if (keyCode == LEFT) currPage = "zero";
    }
    
    if (currPage.equals("one")) {
      if (!one.update()) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
        if (keyCode == RIGHT) currPage = "one";
      }
    }
    
    if (currPage.equals("two")) {
      if (!one.update()) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
        if (keyCode == RIGHT) currPage = "two";
      }
    }
    
    
  }
}
