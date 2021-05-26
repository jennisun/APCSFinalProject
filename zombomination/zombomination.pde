int[][] xgrid;
int[][] ygrid;

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
  PImage peashooter = loadImage("peashooter1.png");
  peashooter.resize(80, 80);
  image(peashooter, 110, 150);
  peas = new ArrayList<Pea>();
  peas.add(new Pea(180, 20));
}


//void draw() {
//  background(200);
//  PImage zombie = loadImage("peashooter1.png");
//  zombie.resize(100, 100);
//  image(zombie,100, 0);
//  for (Pea p: peas) {
//    p.move();
//    p.display();
//  }
//  //fill(0);
//  //textSize(20);
//  //text("x: "+mouseX+"\ny: "+mouseY,0,20);
//}
