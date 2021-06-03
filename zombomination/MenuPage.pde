public class MenuPage {
  PImage hand = loadImage("zombiehand.png");
  int pageNum;
  
  public MenuPage(int page){
    pageNum = page;
    
    hand.resize(300, 450);
    image(hand, 240, 285);
  }
  
  public void draw() {
    image(hand, 240, 285);
  }
  
  
  
}
