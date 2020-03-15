/*
Ryan Earl
Final Project 
Creates a zombie text-based game in which you type to survive 
*/
int spawnTime;
final int WAIT_TIME = 4000;
final int AUDIO_TIME = 2000;
final int NUMBER_OF_PARTICLES = 40;
String word = "";
String saved = "";
//String typing = "";
float VELOCITY = 5;
PFont font;
int timeToSpawn;
int killed;
import processing.sound.*;

SoundFile file;
String audio = "McZombie.mp3";
String audio1 = "Scream.mp3";
String path;
Survivor survivor;
Zombie zombie;


ArrayList<ParticleSystem> particleSystems;
//ArrayList<ZombieSystem> zombieSystems;
ArrayList<Zombie> zombies;

//String[] names;
String[] words;

//Sorts the array of words
//String[] sorted = sort(words, words.length); 
//********SETUP****************************************************************************************************************************
void setup() {
  size(1920, 1000, FX2D);
  timeToSpawn = millis();
  zombies = new ArrayList<Zombie>();
  //zombieSystems = new ArrayList <ZombieSystem>();
  particleSystems = new ArrayList <ParticleSystem>();
  survivor = new Survivor();
  zombie = new Zombie();
}
//**********DRAW**************************************************************************************************************************
void draw() {
  background(155);
  textAlign(CENTER);
  fill(0);
  explosion();
  blood();
  display();
  zombie.move();
  zombie.collision(); 
  timer();
}
//********KEY INPUTS****************************************************************************************************************************
void keyPressed() {
  if(key == BACKSPACE && word.length ()>= 1){
      word = word.substring(0, word.length()-1) ;
      println(key);
    } 
 else if(key == ENTER) {
    saved = word.toLowerCase(); 
    println("the saved word is " + saved);
    word = "";
 }
  else word = word + key;
}
//********ALL DISPLAY****************************************************************************************************************************
void display() {
  displayTitle();
  displayPrompt();
  drawCounter();
  zombie.draw();
  survivor.display();
}
void timer() {
  if (millis()- timeToSpawn >= WAIT_TIME) {
   println("tick");
   timeToSpawn = millis();
  }
}
//**************COLLISION AND DEATH**********************************************************************************************************************
void survivorDead() {
  endScreen();
  survivorMusic();
  //file.stop();
  zombie.xVelocity = 0;  
}

void endScreen() {
  //frameRate(0);
  fill(255, 0 , 0);
  textSize(120);
  background (255);
  text("GAME OVER", width/2, height/2);
  fill(255, 0, 0);
  textSize(64);
  text("Score: " + killed, width/2, height/1.5); 
}
//**********AUDIO**************************************************************************************************************************
void zombieMusic() {
  path = sketchPath(audio);
  file = new SoundFile(this, path); 
  file.play();
}

void survivorMusic() {
  //path = sketchPath(audio1);
  //file = new SoundFile(this, path); 
  //file.play();  
}
//**********DEATH+EXPLOSION**************************************************************************************************************************
void blood() {
  for (int i = particleSystems.size()-1; i >= 0; --i) {
    ParticleSystem ps = particleSystems.get(i); 
    if (ps.isFinished()) {
      particleSystems.remove(ps);
    }
    else if (!ps.isFinished()) {
    ps.update();
    ps.draw();
    ps.isFinished();
    }
  }
}
void explosion() {
  if (zombie.isMatch(saved) == true && key == ENTER) {
    particleSystems.add(
    new ParticleSystem(NUMBER_OF_PARTICLES, zombie.x+200, zombie.y+150));
  zombieMusic();
  }
    else if (zombie.isMatch(saved) == false) {  
  }
  boolean iMatched = zombie.isMatch(saved);
  println("I matched is " + iMatched);
}
boolean isTimerDone() {
 return (millis()>spawnTime); 
}
//********SCORE****************************************************************************************************************************
void drawCounter() {
 if (zombie.isMatch(saved) == true) {
   killed += 1;
   particleSystems.add(
   new ParticleSystem(NUMBER_OF_PARTICLES, zombie.x+200, zombie.y+150));
   particleSystems.add(
   new ParticleSystem(NUMBER_OF_PARTICLES, width/2, height/2.5));
   zombie = new Zombie();
 }
}
//********DISPLAY****************************************************************************************************************************

void displayTitle() {
  font = loadFont("Chiller-Regular-120.vlw");
  textAlign(CENTER);
  textFont(font);
  fill(255, 0, 0);
  text("Type Zombies", width/2, height/10);
  fill(255, 0, 0);
  textSize(64);
  text("Score: " + killed, width/2, height/6); 
}
void displayPrompt() {
  font = loadFont("Arial-Black-48.vlw");
  textAlign(CENTER);
  textFont(font);
  fill(255, 0, 0);
  text("Please type in a word: ", width/2, 300);
  text(word, width/2, height/2.5);
}
//************************************************************************************************************************************
