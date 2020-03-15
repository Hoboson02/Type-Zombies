import processing.sound.*;

SoundFile file;
String audio = "crunch.mp3";
String path; 
 float basketX;
 float basketY;

Basket basket;
Apple apple;
void setup(){
  size (1000, 1000);
  basket = new Basket();
  apple = new Apple();
}
void draw() {
 background (255);
 apple.draw();
 basket.draw();
 apple.move();
basket.moveRight();
basket.moveLeft();
if (basket.collision(apple)== true) {
  //apple = new Apple();
  music();
}
else if (apple.offScreen()){
  //apple = new Apple();
}
}

void music() {
  path = sketchPath(audio);
  file = new SoundFile(this, path); 
  file.play();
}

 void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      basket.moveLeft();
    }
    else if (keyCode == RIGHT) {
      basket.moveRight();
    
    }
  }
 }
