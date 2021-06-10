MenuPage zero;
LevelOne one;
LevelOne two;
String currPage;
PFont font;
Button lvl1, lvl2;
Button menu;

//Level stuff
int[][] xgrid;
int[][] ygrid;
int tick = 0;
PImage bg;
int coronavirus = 500;
int pointer = 0;


void setup() {
  size(800, 700);
  background(16, 121, 99);
  
  currPage = "zero";
  zero = new MenuPage(0);
  one = new LevelOne();
  two = new LevelOne();
  
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
    
    if (lvl1.clickedOn) {
      currPage = "one";
    }
    if (lvl2.clickedOn) {
      currPage = "two";
    }
>>>>>>> main
  }
  
  if (currPage.equals("one")) {
    one.draw();
    menu.update();
    menu.display();
  }
 
  if (currPage.equals("two")) {
    one.draw();
    menu.update();
    menu.display();
  }

}

void mousePressed() {
  if (lvl1.hover() && !lvl1.clickedOn()) lvl1.clickedOn(true);
  if (lvl2.hover() && !lvl2.clickedOn()) lvl2.clickedOn(true);
  
  if (currPage.equals("one")) {
    one.mousePressed();
    if (menu.hover() && menu.clickedOn()) currPage = "zero";
  }
  if (currPage.equals("two")) {
    one.mousePressed();
    if (menu.hover() && menu.clickedOn()) currPage = "zero";
  }
}

void keyPressed() {
}


//void currPage(String hold) {
//  currPage = hold;
//}
