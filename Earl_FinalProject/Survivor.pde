class Survivor {
  PImage img;
  //int xPos;
  //int yPos;
  float x;
  float y;
  
  
  Zombie zombie;
  Survivor() {
    x = 0;
    y = height - 480;
    img = loadImage("Survivor.png");
  }
  
  void display() {
    pushMatrix();
    scale(-1.0, 1.0);
    image(img, x, y, -img.width/2.25, height/2);
    popMatrix();
    
}

  boolean collision(Zombie zombie){
   if (zombie.leftEdge() == leftEdge()){
     return true;
     
   }
   else{
     return false;
   }
  }
  
  float leftEdge(){
    return x+150;
  }
  
  //float rightEdge(){
  //  return x+img.width;
  //}

}

  
