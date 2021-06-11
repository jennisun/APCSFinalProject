public class MenuPage {
  PImage hand = loadImage("zombiehand.png");
  PImage soil = loadImage("soil.png");
  PImage moon = loadImage("moon.png");
  int pageNum;
  PFont font = createFont("Minecraftia", 30);
  
  public MenuPage(int page){
    pageNum = page;
    
    if (pageNum == 0) {
      moon.resize(800, 600);
      image(moon, 0, 0);
      //background
      image(soil, 0, 550);
      image(soil, 350, 550);
      
      hand.resize(325, 500);
      image(hand, 220, 235);
    }
 
  }
  
  public void draw() {
    if (pageNum == 0) {
      image(moon, 0, 0);
      image(soil, 0, 550);
      image(soil, 350, 550);
      image(hand, 220, 235);
      
      textFont(font);
      fill(255);
      textSize(40);
      text("zombomination", 220, 80);
    }
    
    if (pageNum == 1) {
      textFont(font);
      fill(255);
      textSize(40);
      text("zombomination", 220, 80);
      
      textSize(15);
      text("Zombombination: A game of Plants VS Zombie — alternate universe style! WabAm.", 30, 155);
    }
  }

}
