MenuPage one;
LevelOne two;
String currPage;
PFont font;
Button a;

void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "one";
  one = new MenuPage(0);
  two = new LevelOne();
  
  a = new Button(30, 30, 180, 50, "Level One");
}

void draw() {
  if (currPage.equals("one")) {
    background(16, 121, 99);
    one.draw();
    
    
    a.update();
    a.display();
    if (a.clickedOn) {
      currPage = "two";
    }
  }
  
  else {
    two.draw();
  }
 
}

void mousePressed() {
  if (currPage.equals("two")) two.mousePressed();
  if (a.hover() && !a.clickedOn()) a.clickedOn(true);
}

void keyPressed() {
  if (key == 'a') {
    if (currPage.equals("one")) currPage = "two";
    else currPage = "one";
  }
}
