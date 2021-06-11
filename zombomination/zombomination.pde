MenuPage zero;
LevelOne one;
LevelTwo two;
LevelThree three;
String currPage;
PFont font;
Button lvl1, lvl2, lvl3;

//Level stuff
int[][] xgrid;
int[][] ygrid;
PImage bg;
int tick = 0;
int coronavirus;
int pointer = 0;
int totalTime = 0;


void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "zero";
  zero = new MenuPage(0);
  three = new LevelThree();
  two = new LevelTwo();
  one = new LevelOne();
  
  
  lvl1 = new Button(100, 130, 180, 50, "LEVEL ONE");
  lvl2 = new Button(520, 130, 180, 50, "LEVEL TWO");
  lvl3 = new Button(100, 230, 180, 50, "LEVEL THREE");
}

void draw() {
  if (currPage.equals("zero")) {
    background(16, 121, 99);
    zero.draw();
    
    lvl1.update();
    lvl1.display();
    lvl2.update();
    lvl2.display();
    lvl3.update();
    lvl3.display();
  
  }
  
  if (currPage.equals("one")) {
    if (one.update().equals("lose")) one.lose();
    else if (one.update().equals("win")) one.win();
    else one.draw();
  }
 
  if (currPage.equals("two")) {
    if (two.update().equals("false")) two.draw();
    else if (two.update().equals("win")) two.win();
    else two.lose();
  }
  
  if (currPage.equals("three")) {
    if (three.update().equals("false")) three.draw();
    else if (three.update().equals("win")) three.win();
    else three.lose();
  }
}


void mousePressed() {
  if (currPage.equals("one")) one.mousePressed();
  if (currPage.equals("two")) two.mousePressed();
  if (currPage.equals("three")) three.mousePressed();
  
  
  if (lvl1.hover() && !lvl1.clickedOn()) {
    lvl1.clickedOn(false);
    currPage = "one";
  }
  if (lvl2.hover() && !lvl2.clickedOn()) {
    lvl2.clickedOn(false);
    currPage = "two";
  }
  if (lvl3.hover() && !lvl3.clickedOn()) {
    lvl3.clickedOn(false);
    currPage = "three";
  }
}

void keyPressed() {
  if (key == CODED) {
    
    if (currPage.equals("one")) {
      if (one.update().equals("false")) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else if (one.update().equals("win")) {
        if (keyCode == LEFT) currPage = "zero";
        if (keyCode == RIGHT) currPage = "two";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
      }
      one = new LevelOne();
    }
    
    if (currPage.equals("two")) {
      if (two.update().equals("false")) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else if (two.update().equals("win")) {
        if (keyCode == LEFT) currPage = "zero";
        if (keyCode == RIGHT) currPage = "three";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
      }
      two = new LevelTwo();
    }
    
    if (currPage.equals("three")) {
      if (three.update().equals("false")) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else if (three.update().equals("win")) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
      }
      three = new LevelThree();
    }
    
    
  }
}
