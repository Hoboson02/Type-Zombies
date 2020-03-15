class Apple{
  PImage img; 
  int x;
  int y;
  final int VELOCITY = 4;
  Apple(){
    x = width/2;
    y = width/20;
    img = loadImage("apple.png");
  }
  
  void draw() {
    image (img, x, y, width/20, width/20);
  }
  
  void move() {
    y+= VELOCITY;
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
  boolean offScreen(){
     return (y < height);
  }
}
