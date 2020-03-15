class Friend {
  final float DEFAULT_SIZE = 100;
  final float DEFAULT_Y = 100; // Off screen.
  final float MINIMUM_INITIAL_Y_VELOCITY = 4;
  final float MAXIMUM_INITIAL_Y_VELOCITY = 6;
  
  float x;
  float y;
  float size;
  color colour; // Avoid 'color' identifier in Processing.
  float yVelocity;
  String name;
  
    
  Friend() {
    this.size = random(DEFAULT_SIZE/4, DEFAULT_SIZE);
    this.x = width/2;
    this.y = DEFAULT_Y;  
    this.colour = color(random(50, 255), random(50, 255), random(50, 255), 150);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY); 
    this.name = "Default Name";
  } 
  
     
  Friend(String name) {
    this.size = random(DEFAULT_SIZE/4, DEFAULT_SIZE);
    this.x = random(width*.2, width*.8);
    this.y = DEFAULT_Y;  
    this.colour = color(random(50, 255), random(50, 255), random(50, 255), 150);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY); 
    this.name = name;
    //this.img = img;
  }
  
  Friend(String name, float x, float size, color colour) {
    this.size = size;
    this.x = x;
    this.y = DEFAULT_Y; 
    this.colour = colour;
    this.yVelocity =random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY); 
    this.name = name;
  }
  
  void draw() {
    fill(this.colour);
    ellipse(this.x, this.y, this.size, this.size);
    fill(0);
    textSize(8);
    text(name, x-size/2,y);
  }
 
  void move() {
    this.y += this.yVelocity;
  }
  
  boolean reachesBottom() {
    return (y>=height);
  }
  
}
