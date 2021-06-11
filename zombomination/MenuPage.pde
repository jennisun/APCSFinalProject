public class MenuPage {
  PImage hand = loadImage("zombiehand.png");
  PImage soil = loadImage("soil.png");
  int pageNum;
  PFont font = createFont("Minecraftia", 30);
  
  public MenuPage(int page){
    pageNum = page;
    
    //background
    image(soil, 0, 550);
    image(soil, 350, 550);
    
    hand.resize(325, 500);
    image(hand, 220, 235);
  }
  
  public void draw() {
    textFont(font);
    fill(255);
    textSize(40);
    text("zombomination", 220, 80);

    image(soil, 0, 550);
    image(soil, 350, 550);
    
    image(hand, 220, 235);
  }

}
