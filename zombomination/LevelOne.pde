public class LevelOne {
 
  public LevelOne() {
    tick = 0;
    size(800, 700);
    bg = loadImage("tempbg.png");
    bg.resize(800, 700);
    image(bg, 0, 0);
    coronavirus = 1000;
    totalTime = 500;

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
    buttons.add(new Button(130, 570, 100, 100, "conezom.png", 75));
    buttons.add(new Button(230, 570, 100, 100, "pailzom.png", 100));
    buttons.add(new Button(330, 570, 100, 100, "SK1.PNG", 100));
    buttons.add(new Button(430, 570, 100, 100, "SK2.PNG", 100));

    for (int i = 0; i < 5; i ++) {
      rowHighlights.add(new rowHighlight(ygrid[i][0], xgrid[i][0], 720, 80, "zom.png"));
    }

    //Stuy Kids
   
  
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
   
    peashooters.add(new Peashooter(ygrid[0][0], xgrid[0][0]));
 
    peashooters.add(new Peashooter(ygrid[0][0], xgrid[2][2]));
    
    peashooters.add(new Peashooter(ygrid[0][0], xgrid[4][4]));
  
    peashooters.add(new Peashooter(ygrid[1][1], xgrid[2][2]));

    peashooters.add(new Peashooter(ygrid[1][1], xgrid[4][4]));
    mushrooms.add(new Mushroom(ygrid[1][1], xgrid[0][0]));
    mushrooms.add(new Mushroom(ygrid[2][2], xgrid[0][0]));
    mushrooms.add(new Mushroom(ygrid[2][2], xgrid[1][1]));
    mushrooms.add(new Mushroom(ygrid[2][2], xgrid[2][2]));
    mushrooms.add(new Mushroom(ygrid[2][2], xgrid[3][3]));
    mushrooms.add(new Mushroom(ygrid[4][4], xgrid[0][0]));
    mushrooms.add(new Mushroom(ygrid[4][7], xgrid[4][7]));
    mushrooms.add(new Mushroom(ygrid[4][7], xgrid[4][7]));
    mushrooms.add(new Mushroom(ygrid[4][7], xgrid[4][7]));
    
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
      noStroke();
     fill(0, 255, 48);
     rect(100, 50, 430, 15);
     fill(255, 255, 255);
     rect(100, 50, (float) 430 * (totalTime - tick) / totalTime, 15);

     textSize(15);
     text("TIME", 50, 73);
     
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
      z.display();
      if (tick % 300 == 0) {
        germs.add(new Germ(z.x, z.y));
      
        for (Germ g : germs){
          if (g.clickedOn()){
            removeGerms.add(g);
          }
        }
      }
    }
    for (Zombie z : zombies){
      if (!z.display()) removeZombies.add(z);
      if (z.zombieType.equals("SK1.PNG") || z.zombieType.equals("SK2.PNG")){
        
        //if (tick % 100 == 0) z.cough();
     
        for (Peashooter a : peashooters) {
          if (a.getY() == z.getY() && z.getX() - a.getX() <= -50) {
            //boolean distancing = true;
            z.eating(true);
      
          }
        }
        for (Mushroom a : mushrooms) {
          if (a.getY() == z.getY() && z.getX() - a.getX() <= -50) {
         
            z.eating(true);
   
          }
        }
        for (Potato a : potatos) {
          if (a.getY() == z.getY() && z.getX() - a.getX() <= -50) {
          
            z.eating(true);
        
          }
        }
      }
      else{
        for (Peashooter a : peashooters) {
          if (a.getY() == z.getY() && dist(a.getX(), a.getY(), z.getX(), z.getY()) < 10) {
            z.eatingPeashooter(true);
            if (a.howAlive<=0) {
              removePeashooters.add(a);
            }
            else{
              a.howAlive-=5;
            }
          }
        }
        for (Mushroom b : mushrooms) {
          if (b.getY() == z.getY() && dist(b.getX(), b.getY(), z.getX(), z.getY()) < 10) {
            z.eatingMushroom(true);
            if (b.howAlive<=0) {
              removeMushrooms.add(b);
            }
            else{
              b.howAlive-=5;
            }
          }
        }
        for (Potato c : potatos) {
          if (c.getY() == z.getY() && dist(c.getX(), c.getY(), z.getX(), z.getY()) < 10) {
            z.eatingPotato(true);
            if (c.howAlive<=0) {
              removePotatos.add(c);
            }
            else{
              c.howAlive-=1;
            }
          }
        }
      }
    }
    peashooters.removeAll(removePeashooters);
    mushrooms.removeAll(removeMushrooms);
    potatos.removeAll(removePotatos);
    zombies.removeAll(removeZombies);
    
    
    
    
   
   //GERMS-------
     for (Germ g: germs) {
       if (germs.indexOf(g) < pointer) {
         if (!g.clickedOn()) g.display();
         else {
           removeGerms.add(g);
           pointer -= 1;
         }
       }
     }
    germs.removeAll(removeGerms);
    
    if (tick % 1000 == 0) pointer ++;
    
   //stuff
    tick += 1;
    fill(0);
    textSize(20);
    //text(totalTime + pointer + " ",0,70);
  }
  
  void win() {
    bg = loadImage("tempbg.png");
    bg.resize(800, 700);
    image(bg, 0, 0);
    
    PImage left = loadImage("left.png");
    PImage right = loadImage("right.png");
    image(left, 30, 560);
    image(right, 630, 570);
    
    fill(0);
    textSize(25);
    text("MENU",160,650);
    text("LEVEL TWO",487,652);
    
    textSize(70);
    text("VICTORY", 232, 370);
    PImage trophy = loadImage("trophy.png");
    trophy.resize(120, 110);
    image(trophy, 340, 370);
    image(trophy, 230, 370);
    image(trophy, 450, 370);
  }
  
  
  void lose() {
    bg = loadImage("tempbg.png");
    bg.resize(800, 700);
    image(bg, 0, 0);
    
    PImage left = loadImage("left.png");
    image(left, 30, 560);
    
    fill(0);
    textSize(25);
    text("MENU",160,650);
    
    textSize(70);
    text("DEFEAT", 232, 370);
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
    
    for (Germ g: germs) {
      if (g.hover()) {
        g.clickedOn(true);
        coronavirus += 25;
      }
    }
  }
  
  String update() {
    if (peashooters.size() == 0 && mushrooms.size() == 0 && potatos.size()== 0 && tick > 10) return "win";
    else if (totalTime < tick) return "lose";
    else return "false";
  }

}
