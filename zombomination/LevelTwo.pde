public class LevelTwo {

  public LevelTwo() {
    size(800, 700);
    bg = loadImage("tempbg.png");
    bg.resize(800, 700);
    image(bg, 0, 0);

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
    rect(30, 570, 100, 100);
    
    rect(550, 570, 50, 50);
    
    buttons = new ArrayList<Button>();
    rowHighlights = new ArrayList<rowHighlight>();
    
    buttons.add(new Button(30, 570, 100, 100, "zom.png", 50));
    buttons.add(new Button(130, 570, 100, 100, "conezom.png", 50));
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
    
    //Potato
    potatos = new ArrayList<Potato>();
    removePotatos = new ArrayList<Potato>();
    
    //Zombie
    zombies = new ArrayList<Zombie>();
    removeZombies = new ArrayList<Zombie>();
    
    //Germ
    germs = new ArrayList<Germ>();
    removeGerms = new ArrayList<Germ>();
    
    //Level One
    //zombies.add(new Zombie(600, 150));
    peashooters.add(new Peashooter(ygrid[1][1], xgrid[1][1]));
    peashooters.add(new Peashooter(ygrid[3][2], xgrid[3][2]));
    peashooters.add(new Peashooter(ygrid[2][1], xgrid[2][1]));
    peashooters.add(new Peashooter(ygrid[0][0], xgrid[0][0]));
    //mushrooms.add(new Mushroom(ygrid[4][1], xgrid[4][1]));
    mushrooms.add(new Mushroom(ygrid[4][7], xgrid[4][7]));
    //mushrooms.add(new Mushroom(ygrid[4][3], xgrid[4][3]));
    potatos.add(new Potato(ygrid[3][7], xgrid[3][7]));
    
    germs.add(new Germ(ygrid[1][2], xgrid[1][2]));
    germs.add(new Germ(ygrid[1][2], xgrid[1][2]));
    germs.add(new Germ(ygrid[1][2], xgrid[1][2]));
  }
  
  
  void draw() {
    //background
    //background(200);
    image(bg, 0, 0);
    for (int x = 0; x < 5; x += 1) {
      for (int y = 0; y < 9; y += 1) {
        if (x % 2 == 1 && y % 2 == 1) fill(180, 214, 69);
        else if (x % 2 == 0 && y % 2 == 0) fill(48, 156, 99);
        else fill(108, 190, 86);
        noStroke();
        rect(ygrid[x][y], xgrid[x][y], 80, 80);
      }
    }
    
    //BUTTONS-------
    fill(85, 31, 31);
    rect(30, 570, 500, 100);
    
    //corona counter
    rect(550, 570, 80, 50);
    fill(255);
    textSize(15);
    text(coronavirus, 570, 610);
    
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
    //menu.update();
    //menu.display();
    
  
    //PLANTS-------
   
    //peashooter
    for (Peashooter q : peashooters) {
      q.display();
      if (tick % 150 == 0) q.attack();
    }
    
    for (Pea p: peas) {
      p.move();
      p.display();
      if (p.getx() > 820 || !p.display()) removePeas.add(p);
    }
    peas.removeAll(removePeas);
    
    
    //mushroom
    for (Mushroom m : mushrooms) {
      m.display();
      if (tick % 120 == 0) m.attack();
    }
    
    for (Shroom s: shrooms) {
      s.move();
      s.display();
      if (s.getx() > 820) removeShrooms.add(s);
      else if (s.getdist() > 150) removeShrooms.add(s);
    }
    shrooms.removeAll(removeShrooms);
   
   //potato
   
   for (Potato p: potatos) {
     p.display();
   }
   
   
   //ZOMBIES-------
    for (Zombie z : zombies){
      if (!z.display()) removeZombies.add(z);
      
      for (Peashooter a : peashooters) {
        if (a.getY() == z.getY() && dist(a.getX(), a.getY(), z.getX(), z.getY()) < 10) {
          z.eatingPeashooter(true);
          if (a.display()) removePeashooters.add(a);
        }
      }
      for (Mushroom b : mushrooms) {
        if (b.getY() == z.getY() && dist(b.getX(), b.getY(), z.getX(), z.getY()) < 10) {
          z.eatingMushroom(true);
          if (!z.eating()) removeMushrooms.add(b);
        }
      }
      for (Potato c : potatos) {
        if (c.getY() == z.getY() && dist(c.getX(), c.getY(), z.getX(), z.getY()) < 10) {
          z.eatingPotato(true);
          if (!z.eating()) removePotatos.add(c);
        }
      }
    }
    peashooters.removeAll(removePeashooters);
    mushrooms.removeAll(removeMushrooms);
    potatos.removeAll(removePotatos);
    zombies.removeAll(removeZombies);
    
    
   
   //GERMS-------
     for (Germ g: germs) {
       if (germs.indexOf(g) <= pointer) {
         if (!g.clickedOn()) g.display();
         else {
           removeGerms.add(g);
           pointer -= 1;
         }
       }
     }
    germs.removeAll(removeGerms);
    
    if (tick == 200) pointer ++;
    if (tick == 500) pointer ++;
    
   //stuff
    tick += 1;
    fill(0);
    textSize(20);
    text("FPS: " + pointer + " ",0,50);
  }

  void keyPressed() {
  }
  
  void mousePressed() {
    for (Button b: buttons) {
      if (b.hover() && !b.clickedOn()) b.clickedOn(true);
      else if (b.hover() && b.clickedOn()) b.clickedOn(false);
    }
    
    //if (menu.hover() && menu.clickedOn()) currPage("zero");
    
    for (rowHighlight r: rowHighlights) {
      if (r.hover()) r.clickedOn(true);
    }
    
    for (Germ g: germs) {
      if (g.hover()) {
        g.clickedOn(true);
        coronavirus += 50;
      }
    }
  }

  //public String currPage() {
  //  return curr;
  //}
}
