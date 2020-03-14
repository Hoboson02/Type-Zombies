class Particle {
  
  final float DEFAULT_SIZE = 20;
  final float MINIMUM_INITIAL_X_VELOCITY = -10;
  final float MAXIMUM_INITIAL_X_VELOCITY = 10;
  final float MINIMUM_INITIAL_Y_VELOCITY = -10;
  final float MAXIMUM_INITIAL_Y_VELOCITY = -2;
  final float ACCELERATION = 0.4;
  
  float x;
  float y;
  float size;
  color colour; // Avoid 'color' identifier in Processing.
  float xVelocity;
  float yVelocity;
    
  Particle() {
    this.x = width / 2;
    this.y = height / 2;
    this.size = random(DEFAULT_SIZE - 15, DEFAULT_SIZE);
    this.colour = color(255, 0, 0, 150);
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY);
  } 
  
  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.size = random(DEFAULT_SIZE - 20, DEFAULT_SIZE);
    this.colour = color(255, 0, 0, 150);
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY);
  } 
  
  void draw() {
    fill(this.colour);
    ellipse(this.x, this.y, this.size, this.size);
  }

  void move() {
    this.x += this.xVelocity;
    this.y += this.yVelocity;
    this.yVelocity += ACCELERATION;
  }
  
  boolean onScreen() {
    return (x > 0 && x < width && y > 0 && y < height);
  }

}
