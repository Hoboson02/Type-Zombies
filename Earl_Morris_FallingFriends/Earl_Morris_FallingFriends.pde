//Ryan Earl and Nick Morris
//Making a ball fall off the screen with a randomized name from a list

final color BACKGROUND_COLOR = color (100);
int spawnTime;
final int WAIT_TIME = 2000;
//define an array list variable
ArrayList<Friend> friends; 

Friend fallingFriend;
int timeToDropFriend;


String[] names;

void setup() {
  size(800,800, FX2D);
  SetUpFriends();
  friends = new ArrayList<Friend>();
  timeToDropFriend = millis() + (int)random(2000, 3000);
}

void SetUpFriends() {
  //create a new array list and assign it to your array list variable
  friends = new ArrayList <Friend>();
  //read in your names from a file
  names = loadStrings("Names.txt");
  //create new friend objects assigning a name from your file to each object
  for (int i = 0; i < names.length; ++i) {
  friends.add(new Friend(names[i]));
    println(names[i]);
  }
  //print out every friend object's name to make sure all is good

}


void draw() {
  background(255);

  //if its time to make a new friend fall
  
  for (int i = friends.size()-1; i >= 0; --i) {
  //Friend f = friends.get(i);
    if (isTimeToDropNewFriend()) {
     fallingFriend.draw();
     fallingFriend.move();
    }
    timeToDropFriend = millis() + (int)random(2000, 3000);
  }
     //pick a random friend from your array list of friends
     //update(re-arm) your timer
  
  //If you have identified a friend to fall, make it fall
  //if it reaches the bottom, remove it from the array list
  
 
}

boolean isTimeToDropNewFriend() {
  return millis() > timeToDropFriend;
}
