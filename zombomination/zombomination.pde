MenuPage one;
LevelOne two;
String currPage;

void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "one";
  one = new MenuPage(0);
  two = new LevelOne();
}

void draw() {
  if (currPage.equals("one")) {
    background(16, 121, 99);
    one.draw();
  }
  else {
    two.draw();
  }
  
  //fill(0);
  //textSize(20);
  //text("x:  "+mouseX + " y: " + mouseY,0,20);
}

void mousePressed() {
  if (currPage.equals("two")) two.mousePressed();
}

void keyPressed() {
  if (key == 'a') {
    if (currPage.equals("one")) currPage = "two";
    else currPage = "one";
  }
}
