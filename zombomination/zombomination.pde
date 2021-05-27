int[][] xgrid;
int[][] ygrid;
int tick = 0;

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
  peashooters.add(new Peashooter(110, 150));
  
  peas.add(new Pea(190, 170));
}


void draw() {
  //if (tick % 1000 == 0) {
  //  for (Peashooter q : peashooters) {
  //    q.attack();
  //  }
  //}
  
  if (tick % 5 == 0) {
    for (Pea p: peas) {
      p.move();
      p.display();
    }
  }
  tick += 1;
  //fill(0);
  //textSize(20);
  //text("x: "+mouseX+"\ny: "+mouseY,0,20);
}
