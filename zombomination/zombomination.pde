MenuPage zero;
LevelOne one;
LevelTwo two;
String currPage;
PFont font;
Button lvl1, lvl2;

//Level stuff
int[][] xgrid;
int[][] ygrid;
PImage bg;
int tick = 0;
int coronavirus;
int pointer = 0;


void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "zero";
  zero = new MenuPage(0);
  two = new LevelTwo();
  one = new LevelOne();
  
<<<<<<< HEAD
  
  lvl1 = new Button(100, 130, 180, 50, "LEVEL ONE");
  lvl2 = new Button(520, 130, 180, 50, "LEVEL TWO");
=======
<<<<<<< HEAD
  buttons.add(new Button(30, 570, 100, 100, "zom.png"));
  for (int i = 0; i < 5; i ++) {
    rowHighlights.add(new rowHighlight(ygrid[i][0], xgrid[i][0], 720, 80, "zom"));
  }
    buttons.add(new Button(130, 570, 100, 100, "conezom.png"));
  for (int i = 0; i < 5; i ++) {
    rowHighlights.add(new rowHighlight(ygrid[i][0], xgrid[i][0], 720, 80, "cone"));
  }


  //Pea + Peashooter
  peas = new ArrayList<Pea>();
  peashooters = new ArrayList<Peashooter>();
  removePeashooters = new ArrayList<Peashooter>();
  removePeas = new ArrayList<Pea>();
  
  //Shroom + Mushroom
  shrooms = new ArrayList<Shroom>();
  mushrooms = new ArrayList<Mushroom>();
  removeMushrooms = new ArrayList<Mushroom>();
  removeShrooms = new ArrayList<Shroom>();
  
  //Zombie
  zombies = new ArrayList<Zombie>();
  removeZombies = new ArrayList<Zombie>();
  
  //Added Stuff
  zombies.add(new cone(600, 150));
  //zombies.add(new Zombie(600, 225));
  peashooters.add(new Peashooter(ygrid[1][1], xgrid[1][1]));
  //mushrooms.add(new Mushroom(ygrid[1][2], xgrid[1][2]));
  //mushrooms.add(new Mushroom(ygrid[3][3], xgrid[3][3]));
  //mushrooms.add(new Mushroom(ygrid[3][2], xgrid[3][2]));
  //peashooters.add(new Peashooter(ygrid[2][0], xgrid[2][0]));
  peashooters.add(new Peashooter(ygrid[1][2], xgrid[1][2]));
=======
  lvl1 = new Button(100, 130, 180, 50, "Level One");
  lvl2 = new Button(520, 130, 180, 50, "Level Two");
  menu = new Button(10, 10, 120, 50, "Menu");
>>>>>>> main
>>>>>>> b426367b7368be1ce0f903dc81b22323fa6d014d
}

void draw() {
  if (currPage.equals("zero")) {
    background(16, 121, 99);
    zero.draw();
    
<<<<<<< HEAD
    boolean eating = false;
    for (Peashooter a : peashooters) {
      if (a.getY() == z.getY() && dist(a.getX(), a.getY(), z.getX(), z.getY()) < 10 && a.display() == true) {
        z.eating(true);
        //z.eating = true;
        a.howAlive--;
        //if (a.display()) removePeashooters.add(a);
        eating = true;
      }
      else z.eating(false);
          textSize(20);
    //text("Zombie#: "+zombies.size() + " " + z.hit + " " + z.howAlive,0,20);
    text("Zombie#: "+a.howAlive + " "+ z.howAlive + " " + eating,0,20);
    }
    for (Mushroom b : mushrooms) {
      if (b.getY() == z.getY() && dist(b.getX(), b.getY(), z.getX(), z.getY()) < 10) {
        z.eating(true);
        //z.eating = true;
        b.howAlive(2);
        if (b.display()) removeMushrooms.add(b);
        eating = true;
      }
    }
    //for (cone a: cones){
    //  if (a.howAlive <=0){
    //    zombies.add(new Zombie(a.x, a.y));
    //  }
    //}
    if (!eating) z.eating(false);
    //if (!eating) z.eating = false;
    
    //textSize(20);
    ////text("Zombie#: "+zombies.size() + " " + z.hit + " " + z.howAlive,0,20);
    //text("Zombie#: "+b.howAlive + " "+ z.howAlive + " " + eating,0,20);
=======
    lvl1.update();
    lvl1.display();
    lvl2.update();
    lvl2.display();
    
<<<<<<< HEAD
    //if (lvl1.clickedOn) currPage = "one";
    //if (lvl2.clickedOn) currPage = "two";
=======
    if (lvl1.clickedOn) {
      currPage = "one";
    }
    if (lvl2.clickedOn) {
      currPage = "two";
    }
>>>>>>> main
>>>>>>> b426367b7368be1ce0f903dc81b22323fa6d014d
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
  if (currPage.equals("one")) one.mousePressed();
  if (currPage.equals("two")) one.mousePressed();
  
  
  if (lvl1.hover() && !lvl1.clickedOn()) {
    lvl1.clickedOn(false);
    currPage = "one";
  }
  if (lvl2.hover() && !lvl2.clickedOn()) {
    lvl2.clickedOn(false);
    currPage = "two";
  }
}

void keyPressed() {
  if (key == CODED) {
    
    if (currPage.equals("one")) {
      if (!one.update()) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
        if (keyCode == RIGHT) currPage = "two";
      }
      one = new LevelOne();
    }
    
    if (currPage.equals("two")) {
      if (!one.update()) {
        if (keyCode == LEFT) currPage = "zero";
      }
      else {
        if (keyCode == LEFT) currPage = "zero";
        //if (keyCode == RIGHT) currPage = "two";
      }
      two = new LevelTwo();
    }
    
    
  }
}
