class ParticleSystem {
 
  ArrayList<Particle> particles;
  
  ParticleSystem(int numberOfParticles) {
    particles = new ArrayList<Particle>();
    for (int i = 0; i < numberOfParticles; ++i) {
      particles.add(new Particle());
    }
  }
  
  ParticleSystem(int numberOfParticles, float x, float y) {
    particles = new ArrayList<Particle>();
    for (int i = 0; i < numberOfParticles; ++i) {
      particles.add(new Particle(x, y));
    }
  }
  
  void update() {
    for (Particle p : particles) {
      p.move();
    }
  }
  
  void draw() {
    for (Particle p : particles) {
      p.draw();
    }
  }
  
  boolean isFinished() {
    boolean allParticlesOffScreen = true;
    for (Particle p: particles) {
      if (p.onScreen()) {
        allParticlesOffScreen = false;
        break; 
      }
    }
    return allParticlesOffScreen;
  }
  
  
}
