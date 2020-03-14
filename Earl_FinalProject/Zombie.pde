class Zombie {
  PImage img;
  
  final float DEFAULT_X = width + 200;
  final float DEFAULT_Y = height -500;
  final float MINIMUM_INITIAL_X_VELOCITY = 4;
  final float MAXIMUM_INITIAL_X_VELOCITY = 6;
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
    xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
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
  Zombie (String word) {
    size = random(DEFAULT_SIZEx/4, DEFAULT_SIZEy);
    x = random(width*.2, width*.8);
    y = DEFAULT_X;  
    xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);  
    font = loadFont("Chiller-Regular-48.vlw");
    textFont(font);
    this.name = word; 
  }
//************************************************************************************************************************************  
  Zombie(float x, float y, String word) {
    this.size = random(DEFAULT_SIZEx/4, DEFAULT_SIZEy);
    this.x = x;
    this.y = y;  
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    font = loadFont("Chiller-Regular-48.vlw");
    textFont(font);
    this.name = word;
  }
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
   x-= VELOCITY;
  }
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
