int[][] xgrid;
int[][] ygrid;
int tick = 0;
ArrayList<Pea> removePeas;

void setup(){
  size(800, 700);
  
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
  
  //brown button bar
  fill(142, 80, 80);
  rect(30, 570, 500, 100);
  
  //Peashooter stuff
  peas = new ArrayList<Pea>();
  peashooters = new ArrayList<Peashooter>();
  removePeas = new ArrayList<Pea>();
  buttons = new ArrayList<Button>();
  
  peashooters.add(new Peashooter(ygrid[1][0], xgrid[1][0]));
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
  //fill(142, 80, 80);
  //rect(30, 570, 500, 100);
  //buttons.add(new Button(30, 570, 500, 100, 142, 80, 80));
  
  //for (Button b : buttons) {
  //  b.update();
  //  b.display();
  //}
  
  
  //plants
  for (Peashooter q : peashooters) {
    q.display();
    if (tick % 80 == 0) q.attack();
  }
  
  for (Pea p: peas) {
    p.move();
    p.display();
    if (p.getx() > 820) removePeas.add(p);
  }
  peas.removeAll(removePeas);
 
  tick += 1;
  fill(0);
  textSize(20);
  text("peas: "+ peas.size() ,0,20);
}


void keyPressed() {
 if (key == ' ') {
   for (Peashooter q : peashooters) {
     q.attack(false);
   }
 }
 
}
