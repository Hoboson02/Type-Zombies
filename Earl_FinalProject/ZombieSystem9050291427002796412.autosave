class ZombieSystem {
  
 ArrayList<Zombie> zombies;
 
 ZombieSystem(int numberOfZombies) {
  zombies = new ArrayList<Zombie>();
  for (int i = 0; i < numberOfZombies; ++i) {
    zombies.add(new Zombie());
  }
 }
 
 //ZombieSystem(int numberOfZombies, float x, float y) {
 // zombies = new ArrayList<Zombie>();
 // for (int i = 0; i < numberOfZombies; ++i) {
 //   zombies.add(new Zombie(x, y, this.name));
 // }
 //}
 
 void update() {
   for (Zombie z: zombies) {
     z.move();
   }
 }
 
  void display() {
   for (Zombie z: zombies) {
     z.draw();
   }
  }
 //boolean isDead() {
 //  boolean zombieDead = true;
 //  for (Zombie z: zombies) {
 //    if (z.notDead()) {
 //      zombieDead = false; 
 //      break;
 //    }
 //  }
 //  return zombieDead;
 //}
  
  
}
