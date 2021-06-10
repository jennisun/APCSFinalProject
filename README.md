# APCSFinalProject

### Group Doc: https://docs.google.com/document/d/1Z3B83kbJEeKq4yfjkFavvJ3XbL2CGRt2ESAv3gUvFXs/edit?usp=sharing

### UML Diagram: 
Second UML Diagram <br>
<img width="1027" alt="193276953_4126700390723545_2176745659919650637_n" src="https://github.com/xiaopies/hi/blob/master/Screen%20Shot%202021-06-04%20at%207.21.46%20AM.png">
First UML Diagram <br>
<img width="1027" alt="Screen Shot 2021-05-25 at 9 35 02 PM" src="https://user-images.githubusercontent.com/72940402/119589836-a4f78000-bda1-11eb-8f5f-ef5a9bbf8c4b.png">

### Group Name: Zombomination

### Group Members: Xiaoshen Ma & Jennifer Sun

Brief Project Description: Plants vs zombies (pvz), where the player plays on the side of the zombies. It would have similar features to the original pvz game, with a recharge time for zombies and ability to choose which row to put the zombies in. If we have time, we could include power ups for the zombies.


### Dev Log: 
#### 5/24 <br>
Xiaoshen: Drew the initial design for game and worked on proposal. Added variables, methods, and subclasses for zombies and plants! (more details in doc above) <br>

Jennifer: Wrote pixelate method to make pixelated icons for plants/zombies <br>

#### 5/25 <br>
Jennifer: Made icons for zombies and plants, wrote peashooter and pea classes, progress on making setup for game background <br>

#### 5/26 <br>
Xiaoshen: Started zombie class and realized a few more variables are needed in addition to the ones we have. Added variables String zombieType, float x, y (location), and boolean beingHit. Also figured out branching, and all the merge commands (whew). <br>

#### 5/27 <br>
Jennifer: Filled in background squares and got peashooter to regularly shoot peas. Added methods to peashooter and pea and started working on buttons. Did all this on a remote branch so some commits were lost :( <br>

Xiaoshen: Made zombie start to move, messed around with stopping and going again. Can't figure out why a trail of zombies show up without background and if that's a problem making it slower. <br>

#### 5/28 <br>
Jennifer: Changed constructors to load the image only once, which fixed slow FPS. Also fixed background issue, wrote button and rowHighlight classes, as well as made progress on adding zombies to a specified row after clicking the zombie button. <br>

#### 5/29 <br>
Jennifer: Implemented selecting zombie button and successfully creates new zombie in selected row. Found new icons to use. <br>

#### 5/30 <br>
Jennifer: Added mushroom plant which shoots shrooms at a limited range. Changed plants to only shoot when a zombie comes within their range. Added a cone zombie and pail zombie, resized all zombies so they appear the same size and position on the screen. <br>

Xiaoshen: Added health to zombies, so that they take damage from peas and shrooms, made peas and shrooms die after they hit zombies, and made zombies die when they run out of health. Need to figure out how to remove dead zombies from Arraylist without breaking loop, implement plant health, get zombies to eat plants, and get zombies to pause a little when hit. <br>

#### 5/30 <br>
Jennifer: Fixed killing zombies and added health bar for zombies to make sure code is working. Added health for plants and modified Pea and Shroom to add more methods. Started writing falling coronavirus. <br>

Xiaoshen: partially fixed plant health decreasing too fast when zombie gets close, causing zombie to stop a little when near plant. Not yet updated to main because some methods were changed. <br>

#### 6/1 <br>
Jennifer: Added germ icons and temporary background. Wrote germ class and implemented germ counter to go up every time player clicks on falling germs. <br>

#### 6/2 <br>
Jennifer: Fixed accuracy of detection for falling germs and glitch that made peas disappear prematurely. Made germ counter update and only spawn new zombies only if player can afford it (no negative germs). <br>

#### 6/3 <br>
Jennifer: Imported new font and wrote basic structure for menu page and level one. Added level one button and zombiehand.png to menu page, and fixed bugs that occured from switching between pages. <br>

Xiaoshen: Created new branch and pasted in new UML diagram. Currently working on cone zombie on local branch.<br>

#### 6/7 <br>
Jennifer: Made variables in zombomination consistent and worked on fixing the menu button from inside level one. Started making Level.pde to reduce amount of copy pasted code in each of the levels. <br>

#### 6/9 <br>
Jennifer: Implemented plant health!! Fixed bugs, resized potato.png and wrote potato.pde. Need to fix issue of plant disappearing too early (when zombies is still eating). Wrote Level 2. <br>

