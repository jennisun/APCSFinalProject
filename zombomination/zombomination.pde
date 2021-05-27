int[][] xgrid;
int[][] ygrid;
int tick = 0;
ArrayList<Pea> removePeas;

void setup(){
  size(800, 700);
  
  //Square coordinates into grid, starts at 30, 150
  xgrid = new int[5][9];
  ygrid = new int[5][9];
  for (int x = 0; x < 5; x += 1) {
    for (int y = 0; y < 9; y += 1) {
      xgrid[x][y] = 150 + x * 80;
      ygrid[x][y] = 30 + y * 80;
      rect(ygrid[x][y], xgrid[x][y], 80, 80);
    }
  }
  
  //Peashooter stuff
  peas = new ArrayList<Pea>();
  peashooters = new ArrayList<Peashooter>();
  removePeas = new ArrayList<Pea>();
  
  peashooters.add(new Peashooter(110, 150));
  
  peas.add(new Pea(190, 170));
}


void draw() {
  background(200);
  for (int x = 0; x < 5; x += 1) {
    for (int y = 0; y < 9; y += 1) {
      fill(200);
      rect(ygrid[x][y], xgrid[x][y], 80, 80);
    }
  }
  
  
  for (Peashooter q : peashooters) {
    q.display();
    if (tick % 20 == 0) q.attack();
  }
  
  for (Pea p: peas) {
    p.move();
    p.display();
    if (p.getx() > 820) removePeas.add(p);
  }
  
  for (Pea r: removePeas) {
    peas.remove(r);
  }
 
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
