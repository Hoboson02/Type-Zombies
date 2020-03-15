class Zombie {
  PImage img;
  
  final float DEFAULT_X = width + 200;
  final float DEFAULT_Y = height -500;
  final float MINIMUM_INITIAL_X_VELOCITY = 5;
  final float MAXIMUM_INITIAL_X_VELOCITY = 10;
  float x;
  float y;
  float size;
  String name;
  String[] words = loadStrings("Words.txt");
  //String[] words = {"ryan", "jill" };
 
  float xVelocity;
  final float DEFAULT_SIZEx = (width/5);
  final float DEFAULT_SIZEy = (height/2);
//************************************************************************************************************************************
  Zombie() {
    x = DEFAULT_X;
    y = DEFAULT_Y;
    img = loadImage("Zombie.png");
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    name = words [(int)random(0, 99)];
    //name = words [0];
    //words = loadStrings("Words.txt");
  //   for (int i = 0; i <words.length; ++i) {
  //  zombies.add(new Zombie(words[i]));
  //}
    for ( int i = 0; i < words.length; ++i){
    println(words[i]);
  }
  }
//************************************************************************************************************************************  
  //Zombie (String word) {
  //  size = random(DEFAULT_SIZEx/4, DEFAULT_SIZEy);
  //  x = random(width*.2, width*.8);
  //  y = DEFAULT_X;  
  //  xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);  
  //  font = loadFont("Chiller-Regular-48.vlw");
  //  textFont(font);
  //  this.name = word; 
  //}
//************************************************************************************************************************************  
  //Zombie(float x, float y, String word) {
  //  this.size = random(DEFAULT_SIZEx/4, DEFAULT_SIZEy);
  //  this.x = x;
  //  this.y = y;  
  //  this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
  //  font = loadFont("Chiller-Regular-48.vlw");
  //  textFont(font);
  //  this.name = word;
  //}
//******PROBABLY NOT GOING TO USE******************************************************************************************************************************  
  //Zombie(float x, float y) {
  // this.x = x;
  // this.y = y;
  // this.size = random(DEFAULT_SIZEx - 50, DEFAULT_SIZEx + 100);
  // this.size = random(DEFAULT_SIZEy - 50, DEFAULT_SIZEy + 100);
  //}
//******DRAW******************************************************************************************************************************  
  void draw() {
    image(img,x, y, width/5, height/2);
    text(name, x+200, y);
}
  void move() { 
   x-= this.xVelocity;
  }
  
  
  void collision() {
  if (survivor.collision(zombie)== true) {
    println ("Dead");
    survivorDead();
    this.xVelocity = 0;
    //endScreen();
  }
}
//void survivorDead() {
//  endScreen();
//  survivorMusic();
//  //file.stop();
//  xVelocity = 0;  
//}

//void endScreen() {
//  //frameRate(0);
//  fill(255, 0 , 0);
//  textSize(120);
//  background (255);
//  text("GAME OVER", width/2, height/2);
//  fill(255, 0, 0);
//  textSize(64);
//  text("Score: " + killed, width/2, height/1.5); 
//}
//*******BOOLEANS*****************************************************************************************************************************  
  //boolean notDead() {
  // return (x > 0);
  //}
  
  float leftEdge(){
    return x;
  }
  
  boolean offScreen(){
     return (y < height);
  }
  //returns true if the zombie name matches the text value
  boolean isMatch(String text) {
    //compare 2 strings
    if (text.equals(name)) {
      return true; 
    }
    else {
      return false;
    }
    //string1.equals(string2);
    //printa("match")
  }
}
