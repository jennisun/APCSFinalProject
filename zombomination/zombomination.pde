int[][] xgrid;
int[][] ygrid;
int tick = 0;
ArrayList<Pea> removePeas;
ArrayList<Peashooter> removePeashooters;
ArrayList<Shroom> removeShrooms;
ArrayList<Mushroom> removeMushrooms;
ArrayList<Zombie> removeZombies;


void setup(){
  size(800, 700);
  frameRate(100);
  
  //setup
  xgrid = new int[5][9];
  ygrid = new int[5][9];
  for (int x = 0; x < 5; x += 1) {
    for (int y = 0; y < 9; y += 1) {
      xgrid[x][y] = 150 + x * 80;
      ygrid[x][y] = 30 + y * 80;
      
      if (x % 2 == 1 && y % 2 == 1) fill(180, 214, 69);
      else if (x % 2 == 0 && y % 2 == 0) fill(48, 156, 99);
      else fill(108, 190, 86);
      noStroke();
      rect(ygrid[x][y], xgrid[x][y], 80, 80);
    }
  }
  
  //Buttons
  fill(142, 80, 80);
  rect(30, 570, 500, 100);
  
  buttons = new ArrayList<Button>();
  rowHighlights = new ArrayList<rowHighlight>();
  
  buttons.add(new Button(30, 570, 100, 100, "zom1.png"));
  for (int i = 0; i < 5; i ++) {
    rowHighlights.add(new rowHighlight(ygrid[i][0], xgrid[i][0], 720, 80));
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
  //zombies.add(new Zombie(600, 150));
  //zombies.add(new Zombie(600, 225));
  peashooters.add(new Peashooter(ygrid[1][5], xgrid[1][5]));
  mushrooms.add(new Mushroom(ygrid[3][5], xgrid[3][5]));
  //mushrooms.add(new Mushroom(ygrid[3][2], xgrid[3][2]));
  //peashooters.add(new Peashooter(ygrid[2][0], xgrid[2][0]));
  //peashooters.add(new Peashooter(ygrid[1][1], xgrid[1][1]));
}


void draw() {
  //background
  background(200);
  for (int x = 0; x < 5; x += 1) {
    for (int y = 0; y < 9; y += 1) {
      if (x % 2 == 1 && y % 2 == 1) fill(180, 214, 69);
      else if (x % 2 == 0 && y % 2 == 0) fill(48, 156, 99);
      else fill(108, 190, 86);
      noStroke();
      rect(ygrid[x][y], xgrid[x][y], 80, 80);
    }
  }
  
  //brown button bar
  fill(142, 80, 80);
  rect(30, 570, 500, 100);
  
  for (Button b : buttons) {
    b.update();
    b.display();
    if (b.clickedOn) {
      for (rowHighlight r : rowHighlights) {
        r.update();
        r.display();
      }
    }
  }
  
  
  //Zombies

  for (Zombie z : zombies){
    if (!z.display()) removeZombies.add(z);
    
    boolean eating = false;
    for (Peashooter a : peashooters) {
      if (a.getY() == z.getY() && dist(a.getX(), a.getY(), z.getX(), z.getY()) < 10) {
        z.eating(true);
        a.howAlive(25);
        if (a.display()) removePeashooters.add(a);
        eating = true;
      }
    }
    for (Mushroom b : mushrooms) {
      if (b.getY() == z.getY() && dist(b.getX(), b.getY(), z.getX(), z.getY()) < 10) {
        z.eating(true);
        b.howAlive(25);
        if (b.display()) removeMushrooms.add(b);
        eating = true;
      }
    }
    if (!eating) z.eating(false);
    
    textSize(20);
    //text("Zombie#: "+zombies.size() + " " + z.hit + " " + z.howAlive,0,20);
    text("Zombie#: "+zombies.size() + " "+ z.howAlive,0,20);
  }
  peashooters.removeAll(removePeashooters);
  mushrooms.removeAll(removeMushrooms);
  zombies.removeAll(removeZombies);


  
  //Plants
  
  //peashooter
  for (Peashooter q : peashooters) {
    q.display();
    if (tick % 150 == 0) q.attack();
  }
  
  for (Pea p: peas) {
    p.move();
    p.display();
    if (p.getx() > 820) removePeas.add(p);
    for (Zombie z : zombies){
      if (z.x - p.x < 1){
        removePeas.add(p);
      }
    }
  }
  peas.removeAll(removePeas);
  
  
  //peashooter
  for (Mushroom m : mushrooms) {
    m.display();
    if (tick % 120 == 0) m.attack();
    //textSize(20);
    //text("Health: "+m.howAlive ,0,20);
  }
  
  for (Shroom s: shrooms) {
    s.move();
    s.display();
    if (s.getx() > 820) removeShrooms.add(s);
    else if (s.getdist() > 150) removeShrooms.add(s);
  }
  shrooms.removeAll(removeShrooms);
 
 //stuff
  tick += 1;
  fill(0);
  //textSize(20);
  //text("FPS: "+frameRate,0,20);
}



void keyPressed() {

}

void mousePressed() {
  for (Button b: buttons) {
    if (b.hover() && !b.clickedOn()) b.clickedOn(true);
    else if (b.hover() && b.clickedOn()) b.clickedOn(false);
  }
  
  for (rowHighlight r: rowHighlights) {
    if (r.hover()) r.clickedOn(true);
  }
}
