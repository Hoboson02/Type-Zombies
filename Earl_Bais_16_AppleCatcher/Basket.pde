
class Basket {
  PImage img; 
  float x;
  float y;
  Apple apple;
  Basket() {
    x = width/2;
    y = height-150;
    img = loadImage("basket.png");
   
    
  }
  
  void draw () {
    image (img, x, y, width/10, width/10);
  }
  
  boolean collision(Apple apple){
   if (apple.topEdge()>=topEdge() && apple.bottomEdge() <= bottomEdge() && apple.leftEdge() >= leftEdge() && apple.rightEdge() <= rightEdge()){
     return true;
     
   }
   else{
     return false;
   }
  }

  
  void moveLeft() {
    x = x - 5;
  }
 
  void moveRight() {
    x = x + 5;
  }


 
  float topEdge(){
    return y;
  }
  
  float bottomEdge(){
   return y+img.height;
  }
  
  float leftEdge(){
    return x;
  }
  
  float rightEdge(){
    return x+img.width;
  }


}
