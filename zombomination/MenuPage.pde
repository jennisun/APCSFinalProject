public class MenuPage {
  PImage hand = loadImage("zombiehand.png");
  int pageNum;
  PFont font = createFont("Minecraftia", 30);
  
  public MenuPage(int page){
    pageNum = page;
    
    //background
    fill(23, 29, 72);
    rect(0, 550, 800, 150);
    
    hand.resize(325, 500);
    image(hand, 220, 235);
  }
  
  public void draw() {
    textFont(font);
    fill(255);
    text("zombomination", 12, 60);

    fill(23, 29, 72);
    rect(0, 550, 800, 150);
    
    image(hand, 220, 235);
  }

}
