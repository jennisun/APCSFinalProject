void setup(){
  size(900, 500);
  PImage zombie = loadImage("peashooter1.png");
  zombie.resize(100, 100);
  image(zombie,100, 0);
  //rect(185, 30, 5, 5);
  peas = new ArrayList<Pea>();
  peas.add(new Pea(180, 20));
  
}

void draw() {
  background(200);
  PImage zombie = loadImage("peashooter1.png");
  zombie.resize(100, 100);
  image(zombie,100, 0);
  for (Pea p: peas) {
    p.move();
    p.display();
  }
  //fill(0);
  //textSize(20);
  //text("x: "+mouseX+"\ny: "+mouseY,0,20);
  
  
}
