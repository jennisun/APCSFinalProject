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
      text("Zombombination:   A game of Plants VS Zombie ( alternate universe style! ) WabAm.", 30, 155);

      text("You stayed up until 5 am doing your abomination of a final cs project.", 30, 185);

      text("When you next open your eyes, you’ve become President .... of a zombie nation!!", 30, 215);

      text("This is the real world. Plants kill, zombies fight to make it to the other side.", 30, 245);
      text("Collect coronavirus germs in order to infect more people for your zombie army. ", 30, 275);
      text("Check how much coronavirus you have at your disposal at the bottom right box, ", 30, 325);
      text("and which zombies you can select on the bottom left button bar. Make sure you only select one!", 30, 355);
      text("Regular zombies cost 50 corona, cone zombies cost 75, and pail zombies cost 100.", 30, 385);
      text("There are also two stuyKids in the zombie bar that each cost __. ", 30, 415);
      text("They attach to plants and help with the production of germs! Try them out! ", 30, 445);
      text("There are three levels in our game. To go back to the menu, use the left arrow key.", 30, 495);
      text("In order to win and reach the victory page, make sure to clear  ", 30, 525);
      text("ALL plants on the board before time runs up! ", 30, 555);textFont(font);
      fill(255);
      textSize(40);
      text("zombomination", 220, 80);
      
      textSize(15);
      text("Zombombination:   A game of Plants VS Zombie ( alternate universe style! ) WabAm.", 30, 155);

      text("You stayed up until 5 am doing your abomination of a final cs project.", 30, 185);

      text("When you next open your eyes, you’ve become President .... of a zombie nation!!", 30, 215);

      text("This is the real world. Plants kill, zombies fight to make it to the other side.", 30, 245);
      text("Collect coronavirus germs in order to infect more people for your zombie army. ", 30, 275);
      text("Check how much coronavirus you have at your disposal at the bottom right box, ", 30, 325);
      text("and which zombies you can select on the bottom left button bar. Make sure you only select one!", 30, 355);
      text("Regular zombies cost 50 corona, cone zombies cost 75, and pail zombies cost 100.", 30, 385);
      text("There are also two stuyKids in the zombie bar that each cost __. ", 30, 415);
      text("They attach to plants and help with the production of germs! Try them out! ", 30, 445);
      text("There are three levels in our game. To go back to the menu, use the left arrow key.", 30, 495);
      text("In order to win and reach the victory page, make sure to clear  ", 30, 525);
      text("ALL plants on the board before time runs up! ", 30, 555);
   
    }
  }

}
